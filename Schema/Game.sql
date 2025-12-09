CREATE TABLE GAME(
    GameID  INT IDENTITY(1,1) PRIMARY KEY,
    Opponent VARCHAR(50) NOT NULL,
    Venue VARCHAR(50) NOT NULL, 
    PsuScore INT NOT NULL,
    OpponentScore INT NOT NULL, 
    Overtime    INT NOT NULL, 
);

INSERT INTO GAME VALUES('Nevada', 'Beaver Stadium', '46', '11', '0');
INSERT INTO GAME VALUES('FIU', 'Beaver Stadium', '34', '0', '0');
INSERT INTO GAME VALUES('Villanova', 'Beaver Stadium', '52', '6', '0');
INSERT INTO GAME VALUES('Oregon', 'Beaver Stadium', '24', '30', '2');
INSERT INTO GAME VALUES('UCLA', 'Rose Bowl Stadium', '42', '37', '0');
INSERT INTO GAME VALUES('Northwestern', 'Beaver Stadium', '21', '22', '0');
INSERT INTO GAME VALUES('Iowa', 'Kinnick Stadium', '24', '25', '0');
INSERT INTO GAME VALUES('Ohio State', 'Ohio Stadium', '14', '38', '0');
INSERT INTO GAME VALUES('Indiana', 'Beaver Stadium', '24', '27', '0');
INSERT INTO GAME VALUES('Michigan State', 'Spartan Stadium', '28', '10', '0');
INSERT INTO GAME VALUES('Nebraska', 'Beaver Stadium', '37', '10', '0');
INSERT INTO GAME VALUES('Rutgers', 'SHI Stadium', '40', '36', '0');







