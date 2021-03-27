create table patient
(
   id integer not null AUTO_INCREMENT,
   name varchar(255) not null, 
   phone varchar(255) not null,
   dob date not null,
   gender varchar(255) not null,
   primary key(id)
);