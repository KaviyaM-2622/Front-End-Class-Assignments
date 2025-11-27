create database persons;
use persons;
create table person (
id int auto_increment primary key,
full_name varchar(50),
birth_date date) ;

INSERT INTO person(full_name, birth_date)
VALUES ("Kaviya",  '2001-08-05');

select
    full_name,
    year(birth_date) AS birth_year,
    month(birth_date) AS birth_month,
    day(birth_date) AS birth_day
from person;
