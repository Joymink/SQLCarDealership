create or replace function add_car(_serialnum INTEGER, make VARCHAR,model VARCHAR, c_year numeric, cust_id INTEGER, invo_num INTEGER, serv_num INTEGER)
		
returns void
as $MAIN$
begin 
	insert into car(car_serialnum, car_make, car_model, car_year, customer_id, invoice_num, service_num)
	values(_serialnum, make,model,c_year,cust_id,invo_num,serv_num);
end;
$MAIN$
language plpgsql;

create or replace function add_invoice(invo_num INTEGER, amt numeric, cust_id INTEGER, sales_id INTEGER)

returns void
as $MAIN$
begin 
	insert into invoice(invoice_num,amount,customer_id,salesperson_id)
	values(invo_num,amt,cust_id,sales_id);
end;
$MAIN$
language plpgsql;


select add_car(3, 'Lamborghini','SVJ',2021,null,null,null)

select add_car(4, 'Voltswagen','Beetle',2001,1,null,2)

select add_invoice(2, 40000.00, 2, 420)

select add_car(5, 'Chevrolet','Impala SS', 1985, 2,2,null)
select * from service_ticket