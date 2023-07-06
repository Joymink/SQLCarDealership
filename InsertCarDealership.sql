--Salesperson fill

insert into salesperson (salesperson_id, first_name, last_name, salesperson_email)
values(1, 'Jocey','Martinez', 'Jmartinez96@gmail.com');

insert into salesperson (salesperson_id, first_name, last_name, salesperson_email)
values(420, 'Snoop','Dogg', 'Snoopdog@notlion.com');

insert into salesperson (salesperson_id, first_name, last_name, salesperson_email)
values(42, 'Jaime','Churhcill', 'JChurch@aol.com');

--Mechanic fill

insert into mechanic (mechanic_id, first_name, last_name, mechanic_email)
values(1, 'Kelby','Prosper', 'kprosper@hotmail.com');

insert into mechanic (mechanic_id, first_name, last_name, mechanic_email)
values(2, 'Evan','Valve', 'EvanV@henley.com');

--customer fill

insert into customer (customer_id, first_name, last_name, customer_email)
values(1, 'Keylen','Martinez', 'keylenmart@gmail.com');

insert into customer (customer_id, first_name, last_name, customer_email)
values(2, 'Johneil','Evans', 'FatherEvans@yahoo.com');

--invoice fill

insert into invoice (invoice_num, amount, customer_id,salesperson_id)
values(1, 54000.00, 1, 1);

--service_ticket fill

insert into service_ticket(service_num, customer_id, service_done, parts_needed, amount)
values(1, 2, 'Needs Radiator', null, 4230.39);

insert into service_ticket(service_num, customer_id, service_done, parts_needed, amount)
values(2, 1, 'Engine leak', 'new oil pan', 1230.39);

--car fill

insert into car(car_serialnum, car_make, car_model, car_year, customer_id, invoice_num, service_num)
values(1,'Jeep','Wrangler',2023,1,1,null);

insert into car(car_serialnum, car_make, car_model, car_year, customer_id, invoice_num, service_num)
values(2,'Dodge','Charger',1977,2,null,1);

--services fill

insert into services(s_project, service_num, mechanic_id)
values(1, 1, 1);

insert into services(s_project, service_num, mechanic_id)
values(2, 2, 2);

--service_history 

insert into service_history (service_id, car_serialnum, service_num)
values(1,2,1)

insert into service_history (service_id, car_serialnum, service_num)
values(2,4,2)



























