
--SERVICE
INSERT INTO Service VALUES(concat('Service00000',nextval('service_seq')),'Parking');
INSERT INTO Service VALUES(concat('Service00000',nextval('service_seq')),'Parking de nuit');
INSERT INTO Service VALUES(concat('Service00000',nextval('service_seq')),'Lavage');
INSERT INTO Service VALUES(concat('Service00000',nextval('service_seq')),'Garage');

--PLACE
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-A');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-B');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-C');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-D');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-E');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-F');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-G');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-H');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-I');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-J');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-K');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-L');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-M');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-N');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-O');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-P');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-Q');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-R');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-S');
INSERT INTO Place VALUES(concat('Place00000',nextval('place_seq')),'Place-T');


--Vehicle type
INSERT INTO VehicleType VALUES(concat('VehicleType00000',nextval('vehicletype_seq')),'Moto');
INSERT INTO VehicleType VALUES(concat('VehicleType00000',nextval('vehicletype_seq')),'Camion');
INSERT INTO VehicleType VALUES(concat('VehicleType00000',nextval('vehicletype_seq')),'Bus');
INSERT INTO VehicleType VALUES(concat('VehicleType00000',nextval('vehicletype_seq')),'Classique');



--DISCOUNT
INSERT INTO Discount VALUES('Service000001','2023-06-24 08:00:00','2023-06-24 14:00:00',5);
INSERT INTO Discount VALUES('Service000002','2023-06-24 08:00:00','2023-06-24 14:00:00',20);
INSERT INTO Discount VALUES('Service000003','2023-06-24 08:00:00','2023-06-24 14:00:00',10);
INSERT INTO Discount VALUES('Service000003','2023-06-24 08:00:00','2023-06-24 14:00:00',15);


---TARIF SERVICE
INSERT INTO ServiceTariff VALUES('Service000001','VehicleType000001',45000);
INSERT INTO ServiceTariff VALUES('Service000001','VehicleType000002',55000);
INSERT INTO ServiceTariff VALUES('Service000001','VehicleType000003',65000);
INSERT INTO ServiceTariff VALUES('Service000001','VehicleType000004',75000);

--TARIF ADVANCE
INSERT INTO TariffAdvance VALUES('Service000001','08:00','10:00',10);
INSERT INTO TariffAdvance VALUES('Service000002','08:00','10:00',10);
INSERT INTO TariffAdvance VALUES('Service000003','08:00','10:00',10);
INSERT INTO TariffAdvance VALUES('Service000004','08:00','10:00',10);