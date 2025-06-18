CREATE DATABASE Marketplace;

USE Marketplace;

CREATE TABLE User(
UserID int NOT NULL AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
`password` VARCHAR(100) NOT NULL,
location_id int DEFAULT NULL,
PRIMARY KEY (UserID),
UNIQUE KEY (email),
FOREIGN KEY (location_id) REFERENCES Locations(Location)
);


CREATE TABLE