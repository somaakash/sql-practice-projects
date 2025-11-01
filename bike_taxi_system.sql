-- Bike Taxi System Database

create database bike_taxi_system;

show databases;

use bike_taxi_system;

-- Table for Riders

create table riders(
    -> rider_id int primary key,
    -> name varchar(10) not null,
    ->  phone int,
    -> vechicle_num varchar(10),
    -> city varchar(20));

-- Table for Customers

create table custommers(
    -> custommer_id int primary key,
    -> name varchar(15) not null,
    ->  phone int,
    ->  wallet_balance int);

-- Table for Rides

create table rides(
    -> ride_id int primary key,
    -> pickup_location varchar(15),
    -> drop_location varchar(15),
    -> fare int,
    -> ridedate date,
    -> rider_id int,
    -> custommer_id int,
    -> foreign key(rider_id) references riders(rider_id),
    -> foreign key(custommer_id) references custommers(custommer_id));

desc table rider;
desc table custommers;
desc table rides;



-- Insert Data

into riders values(
    -> 1,'akash',123456789,'ts10235','hyd');

insert into riders values(
    -> 2,'perni',1234567256,'ts10236','miyapur');

insert into riders values(
    -> 3,'soma',123456586,'ts50236','beeramguda');



insert into custommers values(
    -> 1,'manish',852316479,500);

insert into custommers values(
    -> 2,'rishi',852316470,600);

insert into custommers values(
    -> 3,'kartik',852316485,700);


INSERT INTO rides
    -> VALUES (1, 'Gachibowli', 'Madhapur', 350, '2025-10-23', 1, 1);

INSERT INTO rides values(
    -> 2, 'Gachibowli', 'Madhapur', 350, '2025-10-23', 3, 2);


-- output


select*from riders;
-- +----------+-------+------------+--------------+------------+
-- | rider_id | name  | phone      | vechicle_num | city       |
-- +----------+-------+------------+--------------+------------+
-- |        1 | akash |  123456789 | ts10235      | hyd        |
-- |        2 | perni | 1234567256 | ts10236      | miyapur    |
-- |        3 | soma  |  123456586 | ts50236      | beeramguda |
-- +----------+-------+------------+--------------+------------+


select*from custommers;
-- +--------------+--------+-----------+----------------+
-- | custommer_id | name   | phone     | wallet_balance |
-- +--------------+--------+-----------+----------------+
-- |            1 | manish | 852316479 |            500 |
-- |            2 | rishi  | 852316470 |            600 |
-- |            3 | kartik | 852316485 |            700 |
-- +--------------+--------+-----------+----------------+


select*from rides;
-- +---------+-----------------+---------------+------+------------+----------+--------------+
-- | ride_id | pickup_location | drop_location | fare | ridedate   | rider_id | custommer_id |
-- +---------+-----------------+---------------+------+------------+----------+--------------+
-- |       1 | Gachibowli      | Madhapur      |  350 | 2025-10-23 |        1 |            1 |
-- |       2 | Gachibowli      | Madhapur      |  350 | 2025-10-23 |        3 |            2 |
-- +---------+-----------------+---------------+------+------------+----------+--------------+





