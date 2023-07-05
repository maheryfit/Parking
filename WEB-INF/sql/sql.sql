CREATE SEQUENCE Customer_seq START WITH 1;
CREATE TABLE IF NOT EXISTS Customer (
   idCustomer VARCHAR(25) PRIMARY KEY NOT NULL,
   name VARCHAR(25) NOT NULL,
   surname VARCHAR(25) NOT NULL,
   phoneNumber VARCHAR(25) NOT NULL CHECK(phoneNumber ~ '^[0-9+]+$'),
   email VARCHAR(30) NOT NULL,
   birthday DATE NOT NULL CHECK(EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM birthday) >= 18),
   registrationDate DATE NOT NULL DEFAULT NOW(),
   isAdmin INT NOT NULL CHECK(isAdmin >= 0 AND isAdmin <= 1),
   loyalty INT NOT NULL CHECK(loyalty >= 0 AND loyalty <= 1),
   password VARCHAR(25) NOT NULL CHECK(LENGTH(password) >= 5)
);

CREATE SEQUENCE Job_seq START WITH 1;
CREATE TABLE IF NOT EXISTS Job (
   idJob VARCHAR(20) PRIMARY KEY NOT NULL,
   nameJob VARCHAR(20) NOT NULL,
   salary INT NOT NULL CHECK(salary >= 500)
);

CREATE SEQUENCE Employee_seq START WITH 1;
CREATE TABLE Employee (
   idEmployee VARCHAR(30) PRIMARY KEY NOT NULL,
   idJob VARCHAR(20) NOT NULL,
   nameEmployee VARCHAR(15) NOT NULL,
   surnameEmployee VARCHAR(15) NOT NULL,
   phoneNumber VARCHAR(25) NOT NULL CHECK(phoneNumber ~ '^[0-9+]+$'),
   email VARCHAR(30) NOT NULL,
   birthday DATE NOT NULL CHECK(EXTRACT(YEAR FROM NOW()) - EXTRACT(YEAR FROM birthday) >= 18),
   hiringDate DATE NOT NULL DEFAULT NOW(),
   FOREIGN KEY(idJob) REFERENCES Job(idJob)
);

CREATE TABLE EmployeeResigns (
   idEmployee VARCHAR(30) NOT NULL,
   resignDate DATE NOT NULL DEFAULT NOW(),
   FOREIGN KEY(idEmployee) REFERENCES Employee(idEmployee)
);

CREATE TABLE WorkHour (
   idEmployee VARCHAR(30) NOT NULL,
   dateHourWorkBegin TIMESTAMP NOT NULL,
   dateHourWorkFinish TIMESTAMP NOT NULL,
   duration TIME NOT NULL,
   FOREIGN KEY(idEmployee) REFERENCES Employee(idEmployee),
   salary REAL NOT NULL CHECK(salary >= 500)
);