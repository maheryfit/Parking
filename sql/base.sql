create database parking;

CREATE SEQUENCE service_seq START WITH 1;

CREATE TABLE Service (
    idService VARCHAR(25) NOT NULL,
    nameService VARCHAR(25),
    PRIMARY KEY (idService)
);

CREATE SEQUENCE place_seq START WITH 1;

CREATE TABLE Place(
    idPlace VARCHAR(25) NOT NULL,
    namePlace VARCHAR(25),
    PRIMARY KEY (idPlace)
);

CREATE SEQUENCE vehicletype_seq START WITH 1;

CREATE TABLE VehicleType(
    idvehicletype VARCHAR(25) NOT NULL,
    namevehicletype VARCHAR(25),
    PRIMARY KEY (idvehicletype)
);

CREATE SEQUENCE discount_seq START WITH 1;

CREATE TABLE Discount (
    idService VARCHAR(25),
    dateHeureDebut TIMESTAMP,
    dateHeureFin TIMESTAMP,
    discount_rate REAL CHECK (discount_rate > 0 AND discount_rate <= 100),
    FOREIGN KEY (idService) REFERENCES Service(idService)
);

CREATE SEQUENCE servicetariff_seq START WITH 1;

CREATE TABLE ServiceTariff (
    idService VARCHAR(25),
    idvehicletype VARCHAR(25),
    amount NUMERIC(10,3),
    FOREIGN KEY (idService) REFERENCES Service(idService),
    FOREIGN KEY (idvehicletype) REFERENCES VehicleType(idvehicletype)
);



CREATE SEQUENCE tariffadvance_seq START WITH 1;

CREATE TABLE TariffAdvance (
    idService VARCHAR(25),
    timestart time,
    timeend time,
    advancement_rate REAL CHECK (advancement_rate > 0 AND advancement_rate <= 100),
    FOREIGN KEY (idService) REFERENCES Service(idService)
);


CREATE SEQUENCE prestation_seq START WITH 1;

CREATE TABLE Prestation(
    idPrestation VARCHAR(25) NOT NULL PRIMARY KEY,
    idCustomer VARCHAR(25),
    idService VARCHAR (25),
    dateStart timestamp,
    dateEnd timestamp,
    duration float,
    idPlace VARCHAR,
    matricule VARCHAR,
    idTypeVehicle VARCHAR,
    amount float,
    FOREIGN KEY (idService) REFERENCES Service(idService),
    FOREIGN KEY (idcustomer) REFERENCES Customer(idCustomer),
    FOREIGN KEY (idPlace) REFERENCES Place(idPlace),
    FOREIGN KEY (idTypeVehicle) REFERENCES Vehicletype(idVehicleType)

);

CREATE TABLE TariffCustomerLoyal(
    idTariffCustomerLoyal VARCHAR,
    values float,
    PRIMARY KEY(idTariffCustomerLoyal)
);
CREATE sequence tariffCustomerLoyal_seq START WITH 1;
