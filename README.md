-- This is sql script for database along with the datasets for the website

create database doctor_appointment_project;
use doctor_appointment_project;


create table User_Info(
user_id int primary key auto_increment,
user_name varchar(30),
user_mobile_no varchar(30),
user_email_id varchar(30),
user_password varchar(255),
user_address varchar(500)
);

create table Doctor_Department(
doctor_department_id int primary key auto_increment,
department_name varchar(100),
department_discription varchar(200)
);


create table Doctor_detail(
doctor_id int primary key auto_increment,
doctor_name varchar(200),
doctor_specialization varchar(500),
doctor_experience int(100),
doctor_address varchar(500),
doctor_department_id int(100),
photo varchar(500),
foreign key(doctor_department_id)
References Doctor_department(doctor_department_id)
on update cascade
on delete cascade
);


create table Doctor_Schedule(
doctor_schedule_id int primary key auto_increment,
doctor_id int ,
foreign key(doctor_id)
references Doctor_detail(doctor_id),
time_start time,
time_end time
);

create table Doctor_Schedule_Day(
doctor_schedule_day_id int primary key auto_increment,
doctor_schedule_id int,
foreign key(doctor_schedule_id)
references Doctor_Schedule(doctor_schedule_id),
Sunday varchar(10) null,
Monday varchar(10) null,
Tuesday varchar(10) null,
Wednesday varchar(10) null,
Thursday varchar(10) null,
Friday varchar(10) null,
Saturday varchar(10) null
);


create table Appointment_Detail(
appointment_id int primary key auto_increment,
patient_name varchar(100),
patient_email varchar(50) null,
patient_mobile varchar(20),
appointment_date date ,
appointment_time time,
user_id int ,
foreign key(user_id)
references User_Info(user_id),
Doctor_id int,
FOREIGN KEY (Doctor_id)
REFERENCES Doctor_Detail(doctor_id)
ON DELETE cascade
ON UPDATE cascade);	

create table Labrotary(
LabTest_id int primary key auto_increment,
LabTest_name varchar(100),
LabTest_desc varchar(200),
LabTest_price double,
Pre_info varchar(200) );

create table Testimonials(
testId int primary key auto_increment,
testname varchar(200),
testrole varchar(200),
testdescription varchar(400));
