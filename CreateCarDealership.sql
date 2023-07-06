create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	salesperson_email VARCHAR(250)
	
)

create table mechanic ( 
	mechanic_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	mechanic_email VARCHAR(250)
)

create table customer ( 
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	customer_email VARCHAR(250)

)

create table invoice ( 
	invoice_num SERIAL primary key,
	amount NUMERIC(7,2),
	customer_id INTEGER not null ,
	salesperson_id INTEGER not null ,
	date_purchased DATE default CURRENT_DATE,
	foreign key (customer_id) references customer(customer_id),
	foreign key (salesperson_id) references salesperson(salesperson_id)

)
create table service_ticket ( 
	service_num SERIAL primary key,
	customer_id INTEGER not null,
	service_done varchar(200),
	parts_needed varchar(150),
	amount NUMERIC(7,2),
	foreign key (customer_id) references customer(customer_id)
)

create table car ( 
	car_serialnum SERIAL primary key,
	car_make VARCHAR(150),
	car_model VARCHAR(150),
	car_year numeric(4),
	customer_id INTEGER,
	invoice_num INTEGER,
	service_num INTEGER,
	foreign key (customer_id) references customer(customer_id),
	foreign key (invoice_num) references invoice(invoice_num),
	foreign key (service_num) references service_ticket(service_num)

)

create table services (
	s_project SERIAL primary key,
	service_num INTEGER not null,
	mechanic_id INTEGER,
	foreign key (service_num) references service_ticket(service_num),
	foreign key (mechanic_id) references mechanic(mechanic_id)

)

create table service_history (  
	service_id SERIAL primary key,
	car_serialnum INTEGER,
	service_num INTEGER not null,
	date_serviced DATE default CURRENT_DATE,
	foreign key (car_serialnum) references car(car_serialnum),
	foreign key (service_num) references service_ticket(service_num)

)



































