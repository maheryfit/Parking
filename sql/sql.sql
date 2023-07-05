CREATE SEQUENCE Customer_seq START WITH 1;
CREATE TABLE IF NOT EXISTS Customer (
   idCustomer VARCHAR(25) PRIMARY KEY NOT NULL,
   name VARCHAR(25) NOT NULL,
   surname VARCHAR(25) NOT NULL,
   phoneNumber VARCHAR(25) NOT NULL CHECK(phoneNumber ~ '^[0-9+]+$'),
   email VARCHAR(30) NOT NULL,
   birthday DATE NOT NULL CHECK(EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM birthday) >= 18),
   registrationDate DATE NOT NULL DEFAULT NOW() CHECK(NOW() <= registrationDate),
   isAdmin INT NOT NULL CHECK(isAdmin >= 0 AND isAdmin <= 1),
   loyalty INT NOT NULL CHECK(loyalty >= 0 AND loyalty <= 1),
   password VARCHAR(25) NOT NULL CHECK(LENGTH(password) >= 5)
);

CREATE SEQUENCE Job_seq START WITH 1;
CREATE TABLE IF NOT EXISTS Job (
   idJob VARCHAR(20) PRIMARY KEY NOT NULL,
   nameJob VARCHAR(20) NOT NULL,
   salary INT NOT NULL CHECK(salary >= 5000)
);
