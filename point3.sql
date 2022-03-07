create or replace procedure set_vendor_reputation()
	language plpgsql
	as
$$
	declare
		vendors_rec record;
		calification integer;
		reputation varchar(20);
	begin
	
		drop table if exists auditory.weekly_reputation;
		
		create table auditory.weekly_reputation(
			id serial primary key,
			vendor varchar(100) not null unique,
			calification integer not null,
			reputation varchar(20) not null
		);
	
		for vendors_rec in
			select *
				from app_user v
				join user_type ut
					on ut.u_type = 'vendor'
				where v.u_type = ut.id
			loop
				select sum(c.calification)
					into calification
					from product_calification c
					join product p
						on p.supplier = vendors_rec.document
					where c.product = p.id;
					
				if calification <= 5 then
					reputation = 'baja';
				elseif calification <= 10 then
					reputation = 'baja-media';
				elseif calification <= 15 then
					reputation = 'media';
				elseif calification <= 20 then
					reputation = 'media-alta';
				elseif calification > 20 then
					reputation = 'alta';
				end if;	
				
				insert into auditory.weekly_reputation (vendor, calification, reputation)
				values (vendors_rec.full_name, calification, reputation);
				
				
		end loop;
	end;
$$

--call set_vendor_reputation();
--select * from auditory.weekly_reputation;