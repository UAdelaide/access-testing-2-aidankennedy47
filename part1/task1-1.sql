DROP DATABASE IF EXISTS Marketplace;
CREATE DATABASE Marketplace;

USE Marketplace;

DROP TABLE IF EXISTS Location;
CREATE TABLE Location(
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS User;
CREATE TABLE User(
UserID INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE KEY,
password VARCHAR(100) NOT NULL,
locationID INT NOT NULL,
FOREIGN KEY (locationID) REFERENCES Location(LocationID)
);

DROP TABLE IF EXISTS BookInfo;
CREATE TABLE BookInfo(
    BookInfoID INT AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    ISBN VARCHAR(100) NOT NULL,
    PRIMARY KEY (BookInfoID)
);

DROP TABLE IF EXISTS BookListings;
CREATE TABLE BookListings(
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    ListingDate DATE NOT NULL,
    Price DECIMAL(8,2) NOT NULL,
    BookInfoID INT NOT NULL,
    SellerID INT NOT NULL,
    FOREIGN KEY (BookInfoID) REFERENCES BookInfo(BookInfoID),
    FOREIGN KEY (SellerID) REFERENCES User(UserID)
);

DROP TABLE IF EXISTS Purchases;
CREATE TABLE Purchases(
    PurchaseID INT AUTO_INCREMENT PRIMARY KEY,
    PurchaseDate DATE NOT NULL,
    BuyerID INT NOT NULL,
    BookID INT NOT NULL,
    FOREIGN KEY (BuyerID) REFERENCES User(UserID),
    FOREIGN KEY (BookID) REFERENCES BookListings(BookID)
);

INSERT INTO Location(City, State, Country)
VALUES ('Adelaide', 'SA', 'Australia');

INSERT INTO User (name, email, password, locationID)
VALUES ('Aidan', 'aidankennedy47@gmail.com', 'secretpassword', 1);

INSERT INTO BookInfo ()
VALUES ();

INSERT INTO BookListings ()
VALUES ();