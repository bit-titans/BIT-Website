create database bit;
use bit;
create table Announcements(id int primary key AUTO_INCREMENT,
                            title text,
                            adate date,
                            body text
                            );


create table documents(id int,
                        Did varchar(20),
                        constraint fkd foreign key(id) references Announcements(id),
                        constraint pkd primary key(id,did)
                        );