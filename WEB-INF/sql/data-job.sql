INSERT INTO Job VALUES ('Job000001', 'Réceptionniste', 10000);
INSERT INTO Job VALUES ('Job000002', 'Gardien', 9000);
INSERT INTO Job VALUES ('Job000003', 'Comptable', 20000);
INSERT INTO Job VALUES ('Job000004', 'Laveur automobile', 6000);


INSERT INTO Employee VALUES ('Employee000001', 'Job000001', 'John', 'Doe', '123456789', 'john.doe@example.com', '1990-01-01', '2022-01-01');
INSERT INTO Employee VALUES ('Employee000002', 'Job000002', 'Jane', 'Smith', '987654321', 'jane.smith@example.com', '1995-05-10', '2022-02-15');
INSERT INTO Employee VALUES ('Employee000003', 'Job000003', 'Michael', 'Johnson', '456789123', 'michael.johnson@example.com', '1988-12-15', '2022-03-20');
INSERT INTO Employee VALUES ('Employee000004', 'Job000004', 'Sarah', 'Williams', '789123456', 'sarah.williams@example.com', '1992-09-30', '2022-04-10');
INSERT INTO Employee VALUES ('Employee000005', 'Job000001', 'Robert', 'Johnson', '555123456', 'robert.johnson@example.com', '1993-07-20', '2022-05-05');
INSERT INTO Employee VALUES ('Employee000006', 'Job000003', 'Emily', 'Anderson', '444987654', 'emily.anderson@example.com', '1991-03-12', '2022-06-12');
INSERT INTO Employee VALUES ('Employee000007', 'Job000002', 'David', 'Brown', '333789123', 'david.brown@example.com', '1989-11-25', '2022-07-15');
INSERT INTO Employee VALUES ('Employee000008', 'Job000004', 'Olivia', 'Taylor', '222456789', 'olivia.taylor@example.com', '1994-08-08', '2022-08-22');
INSERT INTO Employee VALUES ('Employee000009', 'Job000001', 'Daniel', 'Martin', '111654321', 'daniel.martin@example.com', '1997-02-28', '2022-09-30');
INSERT INTO Employee VALUES ('Employee000010', 'Job000003', 'Sophia', 'Walker', '999333555', 'sophia.walker@example.com', '1990-06-15', '2022-10-10');
INSERT INTO Employee VALUES ('Employee000011', 'Job000002', 'James', 'Clark', '777999888', 'james.clark@example.com', '1996-09-05', '2022-11-18');
INSERT INTO Employee VALUES ('Employee000012', 'Job000004', 'Ava', 'Harris', '666222333', 'ava.harris@example.com', '1992-12-02', '2022-12-25');
INSERT INTO Employee VALUES ('Employee000013', 'Job000001', 'Liam', 'Turner', '444888777', 'liam.turner@example.com', '1993-04-18', '2023-01-05');

-- Employé mbola miasa
CREATE VIEW ActiveEmployee AS SELECT * FROM Employee WHERE idEmployee NOT IN(SELECT idEmployee FROM EmployeeResigns);

-- Salaire total par mois
SELECT SUM(salary) as total_salaire FROM WorkHour WHERE EXTRACT(MONTH FROM dateHourWorkBegin) = 2;

-- Salaire par personne
SELECT idEmployee, SUM(salary) AS total_salary FROM workHour WHERE idEmployee IN (SELECT idEmployee FROM ActiveEmployee) GROUP BY idEmployee;

-- Salaire par personne par mois
SELECT idEmployee, SUM(salary) AS total_salary FROM workHour WHERE EXTRACT(MONTH FROM dateHourWorkBegin) = 2 AND idEmployee IN (SELECT idEmployee FROM ActiveEmployee) GROUP BY idEmployee;

-- Salaire par personne par an
SELECT idEmployee, SUM(salary) AS total_salary FROM workHour WHERE EXTRACT(YEAR FROM dateHourWorkBegin) = 2023 AND idEmployee IN (SELECT idEmployee FROM ActiveEmployee) GROUP BY idEmployee;

-- Salaire total par an
SELECT SUM(salary) as total_salary FROM workhour WHERE EXTRACT(YEAR FROM dateHourWorkBegin) = 2022;

-- Salaire par métier
SELECT SUM(salary) as total_salary FROM workHour WHERE idEmployee IN(SELECT idEmployee FROM ActiveEmployee WHERE idJob = 'Job000001');