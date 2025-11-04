-- Hotel Reservation System 
show databases;

use hello;

-- Hotel Table creation
create table Hotel(
    -> hotel_id int primary key,
    -> hotel_name varchar(15),
    -> city varchar(10),
    -> rating varchar(10))
    -> ;

-- rooms table creation
create table rooms(
    -> roomid int primary key,
    -> hotel_id int,
    -> roomNumber int,
    -> roomType varchar(10),
    -> pricepernight int,
    -> isAvailable varchar(5),
    -> unique(hotel_id,roomNumber),
    -> foreign key(hotel_id) references Hotel(hotel_id));

-- Guests table creation
create table Guests(
    -> guestId int primary key,
    -> fullName varchar(10) not null,
    -> email varchar(15),
    -> phone int,
    -> createdAt date);


-- inserting values of hotel table
insert into Hotel values(
    -> 1,'NOVOTEL','Hyd','best');

insert into Hotel values(
    -> 2,'LAVISON','Che','better');

insert into Hotel values(
    -> 3,'TAJ HOTEL','Mumbai','best');

insert into Hotel values(
    -> 4,'MEHFIL','Hyd','good');

insert into Hotel values(
    -> 5,'udupi','skp,hyd','worst');


-- inserting values in rooms table
insert into rooms values(
    -> 10,1,101,'single',15000,'yes');

insert into rooms values(
    -> 11,2,102,'double',20000,'yes');

insert into rooms values(
    -> 12,3,103,'double',30000,'no');

insert into rooms values(
    -> 13,4,104,'luxxry',100000,'yes');

insert into rooms values(
    -> 14,5,105,'single',3000,'no');

-- inserting values in guests table 
insert into Guests values(
    -> 111,'akash','akash@gmail.com',995566865,'2025-11-04');

insert into Guests values(
    -> 112,'soma','soma@gmail.com',995566865,'2025-10-31');

insert into Guests values(
    -> 113,'manish','manish@xyz.com',994466865,'2025-11-04');

insert into Guests values(
    -> 114,'adi','adi@xyz.com',994466865,'2025-11-02');

insert into Guests values(
    -> 115,'kartik','kartik@xyz.com',994466865,'2025-11-02');

select* from hotel;
select* from rooms;
select* from Guests;

create table reserations(
    -> resrvationId int primary key,
    -> guestId int,
    -> hotel_id int,
    -> roomid int,
    -> checkIN date,
    -> checckOUT date,
    -> totalAmount int,
    -> status ENUM('Pending', 'Confirmed', 'Checked-In', 'Canceled', 'Completed') NOT NULL,
    -> foreign key(guestID) references Guests(guestID),
    -> foreign key(hotel_id) references hotel(hotel_id),
    -> foreign key(roomid) references rooms(roomid));

create table payements(
    -> resrvationId int,
    -> paymentdt date,
    -> ammount int,
    -> paymmentmode enum('credit card','debit card','upi','cash') not null,
    -> foreign key(resrvationId) references reserations(resrvationId));

select*from payements;

select*from reserations;



