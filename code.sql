-- ============================================================
-- CODE FOR CREATING COUNTRY TABLE
-- ============================================================

CREATE TABLE COUNTRY(
    COUNTRY_ID INTEGER PRIMARY KEY,
    COUNTRY_NAME VARCHAR(50)
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF COUNTRY
-- ============================================================

INSERT INTO COUNTRY VALUES(91, 'India');
INSERT INTO COUNTRY VALUES(1, 'United States');
INSERT INTO COUNTRY VALUES(44, 'United Kingdom');
INSERT INTO COUNTRY VALUES(33, 'France');
INSERT INTO COUNTRY VALUES(49, 'Germany');
INSERT INTO COUNTRY VALUES(81, 'Japan');
INSERT INTO COUNTRY VALUES(7, 'Russia');
INSERT INTO COUNTRY VALUES(86, 'China');
INSERT INTO COUNTRY VALUES(55, 'Brazil');
INSERT INTO COUNTRY VALUES(39, 'Italy');
INSERT INTO COUNTRY VALUES(34, 'Spain');
INSERT INTO COUNTRY VALUES(61, 'Australia');
INSERT INTO COUNTRY VALUES(52, 'Mexico');
INSERT INTO COUNTRY VALUES(20, 'Egypt');
INSERT INTO COUNTRY VALUES(353, 'Ireland');
INSERT INTO COUNTRY VALUES(880, 'Bangladesh');
INSERT INTO COUNTRY VALUES(234, 'Nigeria');
INSERT INTO COUNTRY VALUES(62, 'Indonesia');
INSERT INTO COUNTRY VALUES(351, 'Portugal');
INSERT INTO COUNTRY VALUES(93, 'Afghanistan');
INSERT INTO COUNTRY VALUES(355, 'Albania');
INSERT INTO COUNTRY VALUES(213, 'Algeria');
INSERT INTO COUNTRY VALUES(684, 'American Samoa');
INSERT INTO COUNTRY VALUES(376, 'Andorra');
INSERT INTO COUNTRY VALUES(244, 'Angola');
INSERT INTO COUNTRY VALUES(1264, 'Anguilla');
INSERT INTO COUNTRY VALUES(1268, 'Antigua and Barbuda');
INSERT INTO COUNTRY VALUES(54, 'Argentina');
INSERT INTO COUNTRY VALUES(374, 'Armenia');
INSERT INTO COUNTRY VALUES(297, 'Aruba');
INSERT INTO COUNTRY VALUES(43, 'Austria');
INSERT INTO COUNTRY VALUES(994, 'Azerbaijan');
INSERT INTO COUNTRY VALUES(1242, 'Bahamas');
INSERT INTO COUNTRY VALUES(973, 'Bahrain');
INSERT INTO COUNTRY VALUES(1246, 'Barbados');
INSERT INTO COUNTRY VALUES(375, 'Belarus');
INSERT INTO COUNTRY VALUES(32, 'Belgium');


-- ============================================================
-- CODE FOR DISPLAYING COUNTRY DATA
-- ============================================================

SELECT * FROM COUNTRY;


-- ============================================================
-- CODE FOR CREATING OLYMPICS TABLE
-- ============================================================

CREATE TABLE OLYMPICS(
    YEAR INTEGER,
    CITY VARCHAR(50),
    SEASON VARCHAR(50),
    COUNTRY_ID INTEGER,
    PRIMARY KEY(YEAR,SEASON),
    FOREIGN KEY(COUNTRY_ID) REFERENCES COUNTRY
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF OLYMPICS
-- ============================================================

INSERT INTO OLYMPICS VALUES(1952, 'Oslo', 'Winter', 91);
INSERT INTO OLYMPICS VALUES(1956, 'Melbourne', 'Summer', 1);
INSERT INTO OLYMPICS VALUES(1956, 'Cortina d Ampezzo', 'Winter', 44);
INSERT INTO OLYMPICS VALUES(1960, 'Rome', 'Summer', 33);
INSERT INTO OLYMPICS VALUES(1960, 'Squaw Valley', 'Winter', 49);
INSERT INTO OLYMPICS VALUES(1964, 'Tokyo', 'Summer', 61);
INSERT INTO OLYMPICS VALUES(1964, 'Innsbruck', 'Winter', 20);
INSERT INTO OLYMPICS VALUES(1968, 'Mexico City', 'Summer', 93);
INSERT INTO OLYMPICS VALUES(1968, 'Grenoble', 'Winter', 297);
INSERT INTO OLYMPICS VALUES(1972, 'Munich', 'Summer', 213);
INSERT INTO OLYMPICS VALUES(1972, 'Sapporo', 'Winter', 355);
INSERT INTO OLYMPICS VALUES(1976, 'Montreal', 'Summer', 1);
INSERT INTO OLYMPICS VALUES(1976, 'Innsbruck', 'Winter', 49);
INSERT INTO OLYMPICS VALUES(1980, 'Moscow', 'Summer', 1264);
INSERT INTO OLYMPICS VALUES(1980, 'Lake Placid', 'Winter', 351);
INSERT INTO OLYMPICS VALUES(1984, 'Los Angeles', 'Summer', 39);
INSERT INTO OLYMPICS VALUES(1984, 'Sarajevo', 'Winter', 55);
INSERT INTO OLYMPICS VALUES(1988, 'Seoul', 'Summer', 7);
INSERT INTO OLYMPICS VALUES(1988, 'Calgary', 'Winter', 244);
INSERT INTO OLYMPICS VALUES(1992, 'Barcelona', 'Summer', 1264);
INSERT INTO OLYMPICS VALUES(1992, 'Albertville', 'Winter', 1268);
INSERT INTO OLYMPICS VALUES(1994, 'Lillehammer', 'Winter', 43);
INSERT INTO OLYMPICS VALUES(1996, 'Atlanta', 'Summer', 54);
INSERT INTO OLYMPICS VALUES(1998, 'Nagano', 'Winter', 297);
INSERT INTO OLYMPICS VALUES(2000, 'Sydney', 'Summer', 353);
INSERT INTO OLYMPICS VALUES(2002, 'Salt Lake City', 'Winter', 52);
INSERT INTO OLYMPICS VALUES(2004, 'Athens', 'Summer', 91);
INSERT INTO OLYMPICS VALUES(2006, 'Turin', 'Winter', 880);
INSERT INTO OLYMPICS VALUES(2008, 'Beijing', 'Summer', 62);
INSERT INTO OLYMPICS VALUES(2010, 'Vancouver', 'Winter', 33);
INSERT INTO OLYMPICS VALUES(2012, 'London', 'Summer', 684);
INSERT INTO OLYMPICS VALUES(2014, 'Sochi', 'Winter', 20);
INSERT INTO OLYMPICS VALUES(2016, 'Rio de Janeiro', 'Summer', 684);
INSERT INTO OLYMPICS VALUES(2018, 'PyeongChang', 'Winter', 52);
INSERT INTO OLYMPICS VALUES(2021, 'Tokyo', 'Summer', 355);


-- ============================================================
-- CODE FOR DISPLAYING OLYMPICS DATA
-- ============================================================

SELECT * FROM OLYMPICS;


-- ============================================================
-- CODE FOR CREATING ATHLETE TABLE
-- ============================================================

CREATE TABLE ATHLETE(
    ATHLETE_ID INTEGER PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    GENDER VARCHAR(10),
    DOB DATE,
    HEIGHT INTEGER,
    WEIGHT INTEGER,
    COUNTRY_ID INTEGER,
    FOREIGN KEY(COUNTRY_ID) REFERENCES COUNTRY
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF ATHLETE
-- ============================================================

INSERT INTO ATHLETE
VALUES(101,'Ussain','Bolt','Male',to_date('1986-08-21','YYYY-MM-DD'),195,94,1);

INSERT INTO ATHLETE
VALUES(102,'Serena','Williams','Female',to_date('1981-09-26','YYYY-MM-DD'),175,70,1);

INSERT INTO ATHLETE
VALUES(103,'Michael','Phelps','Male',to_date('1985-06-30','YYYY-MM-DD'),193,88,1);

INSERT INTO ATHLETE
VALUES(104,'Simone','Biles','Female',to_date('1997-03-14','YYYY-MM-DD'),142,47,1);

INSERT INTO ATHLETE
VALUES(105,'Usman','Khawaja','Male',to_date('1986-12-18','YYYY-MM-DD'),178,75,91);

INSERT INTO ATHLETE
VALUES(106,'Caroline','Wozniacki','Female',to_date('1990-07-11','YYYY-MM-DD'),177,68,1);

INSERT INTO ATHLETE
VALUES(107,'LeBron','James','Male',to_date('1984-12-30','YYYY-MM-DD'),206,113,1);

INSERT INTO ATHLETE
VALUES(108,'Lindsey','Vonn','Female',to_date('1984-10-18','YYYY-MM-DD'),175,68,44);

INSERT INTO ATHLETE
VALUES(109,'Rafael','Nadal','Male',to_date('1986-06-03','YYYY-MM-DD'),185,85,33);

INSERT INTO ATHLETE
VALUES(110,'Katie','Ledecky','Female',to_date('1997-03-17','YYYY-MM-DD'),180,68,1);

INSERT INTO ATHLETE
VALUES(111,'Novak','Djokovic','Male',to_date('1987-05-22','YYYY-MM-DD'),188,77,1);

INSERT INTO ATHLETE
VALUES(112,'Simone','Manuel','Female',to_date('1996-08-02','YYYY-MM-DD'),178,61,1);

INSERT INTO ATHLETE
VALUES(113,'Roger','Federer','Male',to_date('1981-08-08','YYYY-MM-DD'),185,85,1);

INSERT INTO ATHLETE
VALUES(114,'Allyson','Felix','Female',to_date('1985-11-18','YYYY-MM-DD'),168,55,1);

INSERT INTO ATHLETE
VALUES(115,'Cristiano','Ronaldo','Male',to_date('1985-02-05','YYYY-MM-DD'),187,83,49);

INSERT INTO ATHLETE
VALUES(116,'Sonia O Sullivan','Female',to_date('1969-11-28','YYYY-MM-DD'),163,50,39);

INSERT INTO ATHLETE
VALUES(117,'Diego','Maradona','Male',to_date('1960-10-30','YYYY-MM-DD'),165,75,52);

INSERT INTO ATHLETE
VALUES(118,'Fabiola','Zarina','Female',to_date('1991-09-15','YYYY-MM-DD'),169,65,52);

INSERT INTO ATHLETE
VALUES(119,'Kareem','Abdul-Jabbar','Male',to_date('1947-04-16','YYYY-MM-DD'),218,102,61);

INSERT INTO ATHLETE
VALUES(120,'Steffi','Graf','Female',to_date('1969-06-14','YYYY-MM-DD'),177,64,39);

INSERT INTO ATHLETE
VALUES(121,'Diego','Schwartzman','Male',to_date('1992-08-16','YYYY-MM-DD'),170,70,52);

INSERT INTO ATHLETE
VALUES(122,'Gina','Lollobrigida','Female',to_date('1927-07-04','YYYY-MM-DD'),163,60,39);

INSERT INTO ATHLETE
VALUES(123,'Cesar','Cielo','Male',to_date('1987-01-10','YYYY-MM-DD'),194,84,55);

INSERT INTO ATHLETE
VALUES(124,'Fabiana','Murer','Female',to_date('1981-03-16','YYYY-MM-DD'),180,62,55);

INSERT INTO ATHLETE
VALUES(125,'Andres','Iniesta','Male',to_date('1984-05-11','YYYY-MM-DD'),170,68,34);

INSERT INTO ATHLETE
VALUES(126,'Natalie','Coughlin','Female',to_date('1982-08-23','YYYY-MM-DD'),178,61,1);

INSERT INTO ATHLETE
VALUES(127,'Fernando','Alonso','Male',to_date('1981-07-29','YYYY-MM-DD'),171,68,34);

INSERT INTO ATHLETE
VALUES(128,'Laura','Kenny','Female',to_date('1992-04-24','YYYY-MM-DD'),163,56,44);

INSERT INTO ATHLETE
VALUES(129,'Sebastian','Vettel','Male',to_date('1987-07-03','YYYY-MM-DD'),176,70,49);

INSERT INTO ATHLETE
VALUES(130,'Jackie','Joyner-Kersee','Female',to_date('1962-03-03','YYYY-MM-DD'),178,68,1);

INSERT INTO ATHLETE
VALUES(131,'Lin','Dan','Male',to_date('1983-10-14','YYYY-MM-DD'),178,70,86);

INSERT INTO ATHLETE
VALUES(132,'Yelena','Isinbayeva','Female',to_date('1982-06-03','YYYY-MM-DD'),175,65,7);

INSERT INTO ATHLETE
VALUES(133,'Daley','Thompson','Male',to_date('1958-07-30','YYYY-MM-DD'),185,88,44);

INSERT INTO ATHLETE
VALUES(134,'Dan O Brien','Male',to_date('1966-07-18','YYYY-MM-DD'),193,91,1);

INSERT INTO ATHLETE
VALUES(135,'Hicham','El Guerrouj','Male',to_date('1974-09-14','YYYY-MM-DD'),180,61,33);

INSERT INTO ATHLETE
VALUES(136,'Florence Griffith Joyner','Female',to_date('1959-12-21','YYYY-MM-DD'),178,59,1);

INSERT INTO ATHLETE
VALUES(138,'Usain','Bolt','Male',to_date('1986-08-21','YYYY-MM-DD'),195,94,1);

INSERT INTO ATHLETE
VALUES(139,'Jessica','Ennis-Hill','Female',to_date('1986-01-28','YYYY-MM-DD'),165,57,44);


-- ============================================================
-- CODE FOR DISPLAYING ATHLETE DATA
-- ============================================================

SELECT * FROM ATHLETE;


-- ============================================================
-- CODE FOR CREATING SPORT TABLE
-- ============================================================

CREATE TABLE SPORT(
    SPORT_ID INTEGER PRIMARY KEY,
    SPORT_NAME VARCHAR(50)
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF SPORT
-- ============================================================

INSERT INTO SPORT VALUES(1,'Badminton');
INSERT INTO SPORT VALUES(2,'Basketball');
INSERT INTO SPORT VALUES(3,'Boxing');
INSERT INTO SPORT VALUES(4,'Cycling');
INSERT INTO SPORT VALUES(5,'Diving');
INSERT INTO SPORT VALUES(6,'Equestrian');
INSERT INTO SPORT VALUES(7,'Fencing');
INSERT INTO SPORT VALUES(8,'Football');
INSERT INTO SPORT VALUES(9,'Gymnastics');
INSERT INTO SPORT VALUES(10,'Hockey');
INSERT INTO SPORT VALUES(11,'Judo');
INSERT INTO SPORT VALUES(12,'Rowing');
INSERT INTO SPORT VALUES(13,'Sailing');
INSERT INTO SPORT VALUES(14,'Swimming');
INSERT INTO SPORT VALUES(15,'Table Tennis');
INSERT INTO SPORT VALUES(16,'Tennis');
INSERT INTO SPORT VALUES(17,'Track and Field');
INSERT INTO SPORT VALUES(18,'Volleyball');
INSERT INTO SPORT VALUES(19,'Water Polo');
INSERT INTO SPORT VALUES(20,'Wrestling');


-- ============================================================
-- CODE FOR DISPLAYING SPORT DATA
-- ============================================================

SELECT * FROM SPORT;


-- ============================================================
-- CODE FOR CREATING SPONSOR TABLE
-- ============================================================

CREATE TABLE SPONSOR(
    SPONSOR_ID INTEGER PRIMARY KEY,
    SPONSOR_NAME VARCHAR(50),
    LOGO VARCHAR(50)
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF SPONSOR
-- ============================================================

INSERT INTO SPONSOR VALUES (1,'Nikhitha','BMW');
INSERT INTO SPONSOR VALUES (2,'John','Coca-Cola');
INSERT INTO SPONSOR VALUES (3,'Sarah','Nike');
INSERT INTO SPONSOR VALUES (4,'Michael','Adidas');
INSERT INTO SPONSOR VALUES (5,'Emily','Toyota');
INSERT INTO SPONSOR VALUES (6,'David','Samsung');
INSERT INTO SPONSOR VALUES (7,'Jessica','Apple');
INSERT INTO SPONSOR VALUES (8,'Andrew','Pepsi');
INSERT INTO SPONSOR VALUES (9,'Olivia','Microsoft');
INSERT INTO SPONSOR VALUES (10,'Daniel','McDonalds');
INSERT INTO SPONSOR VALUES (11,'Sophia','Amazon');
INSERT INTO SPONSOR VALUES (12,'Matthew','Sony');
INSERT INTO SPONSOR VALUES (13,'Emma','Volkswagen');
INSERT INTO SPONSOR VALUES (14,'Jacob','Intel');
INSERT INTO SPONSOR VALUES (15,'Ava','Honda');
INSERT INTO SPONSOR VALUES (16,'William','Nestle');
INSERT INTO SPONSOR VALUES (17,'Mia','LOreal');
INSERT INTO SPONSOR VALUES (18,'James','Google');
INSERT INTO SPONSOR VALUES (19,'Charlotte','Lamborghini');
INSERT INTO SPONSOR VALUES (20,'Benjamin','Facebook');


-- ============================================================
-- CODE FOR DISPLAYING SPONSOR DATA
-- ============================================================

SELECT * FROM SPONSOR;


-- ============================================================
-- CODE FOR CREATING ORGANISES TABLE
-- ============================================================

CREATE TABLE ORGANISES(
    YEAR INTEGER,
    SEASON VARCHAR(50),
    SPORT_ID INTEGER,
    FOREIGN KEY(YEAR,SEASON) REFERENCES OLYMPICS,
    FOREIGN KEY(SPORT_ID) REFERENCES SPORT,
    PRIMARY KEY(YEAR,SEASON,SPORT_ID)
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF ORGANISES
-- ============================================================

INSERT INTO ORGANISES VALUES(1952,'Winter',3);
INSERT INTO ORGANISES VALUES(1956,'Winter',7);
INSERT INTO ORGANISES VALUES(1956,'Winter',8);
INSERT INTO ORGANISES VALUES(1964,'Winter',11);
INSERT INTO ORGANISES VALUES(1964,'Summer',14);
INSERT INTO ORGANISES VALUES(1964,'Winter',15);
INSERT INTO ORGANISES VALUES(1972,'Summer',18);
INSERT INTO ORGANISES VALUES(1972,'Winter',16);
INSERT INTO ORGANISES VALUES(1972,'Summer',14);
INSERT INTO ORGANISES VALUES(1981,'Winter',10);
INSERT INTO ORGANISES VALUES(1988,'Winter',12);
INSERT INTO ORGANISES VALUES(1988,'Winter',18);
INSERT INTO ORGANISES VALUES(1988,'Summer',19);
INSERT INTO ORGANISES VALUES(2010,'Winter',16);
INSERT INTO ORGANISES VALUES(2010,'Winter',11);
INSERT INTO ORGANISES VALUES(2012,'Summer',10);
INSERT INTO ORGANISES VALUES(2012,'Summer',8);
INSERT INTO ORGANISES VALUES(2018,'Winter',6);
INSERT INTO ORGANISES VALUES(2018,'Winter',15);
INSERT INTO ORGANISES VALUES(2021,'Summer',2);
INSERT INTO ORGANISES VALUES(2021,'Summer',4);
INSERT INTO ORGANISES VALUES(2021,'Summer',11);
INSERT INTO ORGANISES VALUES(2002,'Winter',17);
INSERT INTO ORGANISES VALUES(2002,'Winter',14);
INSERT INTO ORGANISES VALUES(2004,'Summer',19);
INSERT INTO ORGANISES VALUES(2004,'Summer',20);
INSERT INTO ORGANISES VALUES(2008,'Summer',5);
INSERT INTO ORGANISES VALUES(2008,'Summer',9);
INSERT INTO ORGANISES VALUES(2008,'Summer',10);
INSERT INTO ORGANISES VALUES(1992,'Winter',8);
INSERT INTO ORGANISES VALUES(1992,'Winter',13);


-- ============================================================
-- CODE FOR DISPLAYING ORGANISES DATA
-- ============================================================

SELECT * FROM ORGANISES;


-- ============================================================
-- CODE FOR CREATING VENUE TABLE
-- ============================================================

CREATE TABLE VENUE(
    VENUE_ID INTEGER PRIMARY KEY,
    COUNTRY_ID INTEGER,
    VENUE_NAME VARCHAR(50),
    LOCATION VARCHAR(50),
    CAPACITY INTEGER,
    FOREIGN KEY(COUNTRY_ID) REFERENCES COUNTRY
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF VENUE
-- ============================================================

INSERT INTO VENUE VALUES(1000,91,'Wankhade Stadium','Mumbai',33006);
INSERT INTO VENUE VALUES(1001,1,'Madison Square Garden','New York',20000);
INSERT INTO VENUE VALUES(1002,44,'Wembley Stadium','London',90000);
INSERT INTO VENUE VALUES(1003,33,'Stade de France','Paris',81338);
INSERT INTO VENUE VALUES(1004,49,'Olympiastadion','Berlin',74667);
INSERT INTO VENUE VALUES(1005,81,'Tokyo Dome','Tokyo',55000);
INSERT INTO VENUE VALUES(1006,7,'Luzhniki Stadium','Moscow',81006);
INSERT INTO VENUE VALUES(1007,86,'Beijing National Indoor Stadium','Beijing',18000);
INSERT INTO VENUE VALUES(1008,55,'Ginasio do Ibirapuera','Sao Paulo',11286);
INSERT INTO VENUE VALUES(1009,39,'PalaLottomatica','Rome',10500);
INSERT INTO VENUE VALUES(1010,34,'Palau Sant Jordi','Barcelona',17093);
INSERT INTO VENUE VALUES(1011,61,'Melbourne Cricket Ground','Melbourne',100024);
INSERT INTO VENUE VALUES(1012,52,'Mexico City Arena','Mexico City',22000);
INSERT INTO VENUE VALUES(1013,20,'Cairo Stadium Indoor Halls Complex','Cairo',20000);
INSERT INTO VENUE VALUES(1014,353,'Aviva Stadium','Dublin',51700);
INSERT INTO VENUE VALUES(1015,91,'Gaddafi Stadium','Lahore',27000);
INSERT INTO VENUE VALUES(1016,880,'Sher-e-Bangla National Cricket Stadium','Dhaka',26000);
INSERT INTO VENUE VALUES(1017,234,'National Stadium','Lagos',55000);
INSERT INTO VENUE VALUES(1018,62,'Istora Senayan','Jakarta',7500);
INSERT INTO VENUE VALUES(1019,351,'Estadio da Luz','Lisbon',64400);
INSERT INTO VENUE VALUES(1020,93,'Ghazi Amanullah Khan International Cricket Stadium','Kabul',25000);
INSERT INTO VENUE VALUES(1021,355,'Qemal Stafa Stadium','Tirana',22000);
INSERT INTO VENUE VALUES(1022,213,'Stade 5 Juillet 1962','Algiers',80000);
INSERT INTO VENUE VALUES(1023,684,'Veterans Memorial Stadium','Pago Pago',10000);
INSERT INTO VENUE VALUES(1024,376,'Estadi Nacional','Andorra la Vella',3306);
INSERT INTO VENUE VALUES(1025,244,'Estadio 11 de Novembro','Luanda',50000);
INSERT INTO VENUE VALUES(1026,1264,'Ronald Webster Park','The Valley',1000);
INSERT INTO VENUE VALUES(1027,1268,'Sir Vivian Richards Stadium','North Sound',10000);
INSERT INTO VENUE VALUES(1028,54,'Luna Park Stadium','Buenos Aires',8400);
INSERT INTO VENUE VALUES(1029,374,'Yerevan Football Academy Stadium','Yerevan',1200);
INSERT INTO VENUE VALUES(1030,297,'Oranjestad Basketball Stadium','Oranjestad',2500);
INSERT INTO VENUE VALUES(1031,61,'Optus Stadium','Perth',60000);
INSERT INTO VENUE VALUES(1032,43,'Ernst Happel Stadium','Vienna',50705);
INSERT INTO VENUE VALUES(1033,994,'Baku National Stadium','Baku',69870);
INSERT INTO VENUE VALUES(1034,1242,'Thomas A. Robinson National Stadium','Nassau',15000);
INSERT INTO VENUE VALUES(1035,973,'Bahrain National Stadium','Riffa',30000);
INSERT INTO VENUE VALUES(1036,880,'Sher-e-Bangla Cricket Stadium','Mirpur',25000);
INSERT INTO VENUE VALUES(1037,1246,'Kensington Oval','Bridgetown',11000);
INSERT INTO VENUE VALUES(1038,375,'Dinamo Stadium','Minsk',22220);
INSERT INTO VENUE VALUES(1039,32,'King Baudouin Stadium','Brussels',50024);


-- ============================================================
-- CODE FOR DISPLAYING VENUE DATA
-- ============================================================

SELECT * FROM VENUE;


-- ============================================================
-- CODE FOR CREATING EVENT TABLE
-- ============================================================

CREATE TABLE EVENT(
    EVENT_ID INTEGER PRIMARY KEY,
    EVENT_NAME VARCHAR(50),
    START_DATE DATE,
    END_DATE DATE,
    SPORT_ID INTEGER,
    VENUE_ID INTEGER,
    FOREIGN KEY(SPORT_ID) REFERENCES SPORT,
    FOREIGN KEY(VENUE_ID) REFERENCES VENUE
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF EVENT
-- ============================================================

INSERT INTO EVENT VALUES(1,'100m Sprint',to_date('1952-07-20','YYYY-MM-DD'),to_date('1952-07-25','YYYY-MM-DD'),1,1000);
INSERT INTO EVENT VALUES(2,'Long Jump',to_date('1952-07-26','YYYY-MM-DD'),to_date('1952-07-31','YYYY-MM-DD'),1,1001);
INSERT INTO EVENT VALUES(21,'Mens Basketball',to_date('1952-07-20','YYYY-MM-DD'),to_date('1952-08-02','YYYY-MM-DD'),2,1002);
INSERT INTO EVENT VALUES(22,'Womens Basketball',to_date('1952-07-23','YYYY-MM-DD'),to_date('1952-08-04','YYYY-MM-DD'),2,1003);
INSERT INTO EVENT VALUES(41,'Mens Lightweight',to_date('1952-07-21','YYYY-MM-DD'),to_date('1952-07-30','YYYY-MM-DD'),3,1004);
INSERT INTO EVENT VALUES(42,'Womens Flyweight',to_date('1952-07-24','YYYY-MM-DD'),to_date('1952-07-31','YYYY-MM-DD'),3,1005);
INSERT INTO EVENT VALUES(61,'Kayak Single 1000m',to_date('1952-07-25','YYYY-MM-DD'),to_date('1952-07-30','YYYY-MM-DD'),4,1006);
INSERT INTO EVENT VALUES(62,'Canoe Double 500m',to_date('1952-07-28','YYYY-MM-DD'),to_date('1952-08-02','YYYY-MM-DD'),4,1007);
INSERT INTO EVENT VALUES(81,'Road Race',to_date('1952-07-21','YYYY-MM-DD'),to_date('1952-07-26','YYYY-MM-DD'),5,1008);
INSERT INTO EVENT VALUES(82,'Track Sprint',to_date('1952-07-24','YYYY-MM-DD'),to_date('1952-07-29','YYYY-MM-DD'),5,1009);
INSERT INTO EVENT VALUES(101,'Platform Diving',to_date('1952-07-22','YYYY-MM-DD'),to_date('1952-07-27','YYYY-MM-DD'),6,1010);
INSERT INTO EVENT VALUES(102,'Springboard Diving',to_date('1952-07-25','YYYY-MM-DD'),to_date('1952-07-30','YYYY-MM-DD'),6,1011);

INSERT INTO EVENT VALUES(3,'400m Sprint',to_date('1952-07-22','YYYY-MM-DD'),to_date('1952-07-27','YYYY-MM-DD'),1,1002);
INSERT INTO EVENT VALUES(4,'High Jump',to_date('1952-07-28','YYYY-MM-DD'),to_date('1952-08-02','YYYY-MM-DD'),1,1003);
INSERT INTO EVENT VALUES(23,'Mens Basketball',to_date('1952-07-20','YYYY-MM-DD'),to_date('1952-07-31','YYYY-MM-DD'),2,1004);
INSERT INTO EVENT VALUES(24,'Womens Basketball',to_date('1952-07-23','YYYY-MM-DD'),to_date('1952-08-03','YYYY-MM-DD'),2,1005);
INSERT INTO EVENT VALUES(43,'Mens Lightweight',to_date('1952-07-21','YYYY-MM-DD'),to_date('1952-07-30','YYYY-MM-DD'),3,1006);
INSERT INTO EVENT VALUES(44,'Womens Flyweight',to_date('1952-07-24','YYYY-MM-DD'),to_date('1952-08-02','YYYY-MM-DD'),3,1007);
INSERT INTO EVENT VALUES(63,'Kayak Single 1000m',to_date('1952-07-25','YYYY-MM-DD'),to_date('1952-08-03','YYYY-MM-DD'),4,1008);
INSERT INTO EVENT VALUES(64,'Canoe Double 500m',to_date('1952-07-28','YYYY-MM-DD'),to_date('1952-08-06','YYYY-MM-DD'),4,1009);
INSERT INTO EVENT VALUES(83,'Road Race',to_date('1952-07-22','YYYY-MM-DD'),to_date('1952-07-30','YYYY-MM-DD'),5,1010);
INSERT INTO EVENT VALUES(84,'Track Sprint',to_date('1952-07-25','YYYY-MM-DD'),to_date('1952-08-02','YYYY-MM-DD'),5,1011);
INSERT INTO EVENT VALUES(123,'100m Sprint',to_date('1952-07-20','YYYY-MM-DD'),to_date('1952-07-26','YYYY-MM-DD'),1,1002);
INSERT INTO EVENT VALUES(124,'200m Sprint',to_date('1952-07-22','YYYY-MM-DD'),to_date('1952-07-28','YYYY-MM-DD'),1,1003);
INSERT INTO EVENT VALUES(143,'Mens Basketball',to_date('1956-11-23','YYYY-MM-DD'),to_date('1956-12-08','YYYY-MM-DD'),2,1004);
INSERT INTO EVENT VALUES(144,'Womens Basketball',to_date('1956-11-23','YYYY-MM-DD'),to_date('1956-12-08','YYYY-MM-DD'),2,1005);
INSERT INTO EVENT VALUES(163,'Mens Lightweight',to_date('1960-08-26','YYYY-MM-DD'),to_date('1960-09-05','YYYY-MM-DD'),3,1006);
INSERT INTO EVENT VALUES(164,'Womens Flyweight',to_date('1960-08-26','YYYY-MM-DD'),to_date('1960-09-05','YYYY-MM-DD'),3,1007);
INSERT INTO EVENT VALUES(183,'Kayak Single 1000m',to_date('1964-10-13','YYYY-MM-DD'),to_date('1964-10-23','YYYY-MM-DD'),4,1008);
INSERT INTO EVENT VALUES(184,'Canoe Double 500m',to_date('1964-10-13','YYYY-MM-DD'),to_date('1964-10-23','YYYY-MM-DD'),4,1009);
INSERT INTO EVENT VALUES(203,'Road Race',to_date('1968-10-12','YYYY-MM-DD'),to_date('1968-10-18','YYYY-MM-DD'),5,1010);
INSERT INTO EVENT VALUES(204,'Track Sprint',to_date('1968-10-12','YYYY-MM-DD'),to_date('1968-10-18','YYYY-MM-DD'),5,1011);
INSERT INTO EVENT VALUES(223,'Platform Diving',to_date('1972-08-27','YYYY-MM-DD'),to_date('1972-09-04','YYYY-MM-DD'),6,1012);
INSERT INTO EVENT VALUES(224,'Springboard Diving',to_date('1972-08-27','YYYY-MM-DD'),to_date('1972-09-04','YYYY-MM-DD'),6,1013);


-- ============================================================
-- CODE FOR DISPLAYING EVENT DATA
-- ============================================================

SELECT * FROM EVENT;


-- ============================================================
-- CODE FOR CREATING SPONSORED_BY TABLE
-- ============================================================

CREATE TABLE SPONSORED_BY(
    EVENT_ID INTEGER,
    SPONSOR_ID INTEGER,
    PRIMARY KEY(EVENT_ID,SPONSOR_ID),
    FOREIGN KEY(EVENT_ID) REFERENCES EVENT,
    FOREIGN KEY(SPONSOR_ID) REFERENCES SPONSOR
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF SPONSORED_BY
-- ============================================================

INSERT INTO SPONSORED_BY VALUES(101,2);
INSERT INTO SPONSORED_BY VALUES(4,9);
INSERT INTO SPONSORED_BY VALUES(4,2);
INSERT INTO SPONSORED_BY VALUES(23,3);
INSERT INTO SPONSORED_BY VALUES(63,19);
INSERT INTO SPONSORED_BY VALUES(101,8);
INSERT INTO SPONSORED_BY VALUES(83,18);
INSERT INTO SPONSORED_BY VALUES(43,5);
INSERT INTO SPONSORED_BY VALUES(183,18);
INSERT INTO SPONSORED_BY VALUES(203,16);
INSERT INTO SPONSORED_BY VALUES(223,15);
INSERT INTO SPONSORED_BY VALUES(43,13);
INSERT INTO SPONSORED_BY VALUES(23,10);
INSERT INTO SPONSORED_BY VALUES(63,12);


-- ============================================================
-- CODE FOR DISPLAYING SPONSORED_BY DATA
-- ============================================================

SELECT * FROM SPONSORED_BY;


-- ============================================================
-- CODE FOR CREATING TICKETS TABLE AFTER NORMALISATION
-- ============================================================

CREATE TABLE TICKETS(
    TICKET_NO INTEGER,
    EVENT_ID INTEGER,
    SEAT_NO INTEGER,
    TICKET_DATE DATE,
    PRIMARY KEY(TICKET_NO,EVENT_ID),
    FOREIGN KEY(EVENT_ID) REFERENCES EVENT
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF TICKETS
-- ============================================================

INSERT INTO TICKETS VALUES(1,64,2,to_date('1952-07-29','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(3,224,10,to_date('1972-08-29','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(4,163,4,to_date('1960-09-01','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(5,123,6,to_date('1952-07-24','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(6,83,9,to_date('1952-07-23','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(7,64,11,to_date('1952-08-01','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(8,123,8,to_date('1952-07-26','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(9,4,1,to_date('1952-08-01','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(10,102,9,to_date('1952-07-28','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(11,21,4,to_date('1952-07-20','YYYY-MM-DD'));
INSERT INTO TICKETS VALUES(12,61,7,to_date('1952-07-30','YYYY-MM-DD'));


-- ============================================================
-- CODE FOR DISPLAYING TICKETS DATA
-- ============================================================

SELECT * FROM TICKETS;


-- ============================================================
-- CODE FOR CREATING COST TABLE AFTER NORMALISATION
-- ============================================================

CREATE TABLE COST(
    SEAT_NO INTEGER PRIMARY KEY,
    COST INTEGER
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF COST
-- ============================================================

INSERT INTO COST VALUES(1,2000);
INSERT INTO COST VALUES(2,2000);
INSERT INTO COST VALUES(3,3000);
INSERT INTO COST VALUES(4,3000);
INSERT INTO COST VALUES(5,6000);
INSERT INTO COST VALUES(6,6000);
INSERT INTO COST VALUES(7,6000);
INSERT INTO COST VALUES(8,6500);
INSERT INTO COST VALUES(9,6500);
INSERT INTO COST VALUES(10,7000);
INSERT INTO COST VALUES(11,7000);
INSERT INTO COST VALUES(12,7100);
INSERT INTO COST VALUES(13,7200);


-- ============================================================
-- CODE FOR DISPLAYING COST DATA
-- ============================================================

SELECT * FROM COST;


-- ============================================================
-- CODE FOR CREATING MEDAL TABLE
-- ============================================================

CREATE TABLE MEDAL(
    MEDAL_ID INTEGER,
    MEDAL_TYPE VARCHAR(50),
    ATHLETE_ID INTEGER,
    PRIMARY KEY(MEDAL_ID),
    FOREIGN KEY(ATHLETE_ID) REFERENCES ATHLETE
);


-- ============================================================
-- CODE FOR INSERTING VALUES OF MEDAL
-- ============================================================

INSERT INTO MEDAL VALUES(301,'GOLD',101);
INSERT INTO MEDAL VALUES(302,'SILVER',102);
INSERT INTO MEDAL VALUES(303,'BRONZE',103);
INSERT INTO MEDAL VALUES(304,'GOLD',108);
INSERT INTO MEDAL VALUES(305,'SILVER',105);
INSERT INTO MEDAL VALUES(306,'BRONZE',106);
INSERT INTO MEDAL VALUES(307,'GOLD',107);
INSERT INTO MEDAL VALUES(308,'SILVER',124);
INSERT INTO MEDAL VALUES(309,'BRONZE',109);
INSERT INTO MEDAL VALUES(310,'GOLD',119);
INSERT INTO MEDAL VALUES(311,'SILVER',131);
INSERT INTO MEDAL VALUES(312,'BRONZE',122);
INSERT INTO MEDAL VALUES(313,'GOLD',113);
INSERT INTO MEDAL VALUES(314,'SILVER',134);
INSERT INTO MEDAL VALUES(315,'BRONZE',115);
INSERT INTO MEDAL VALUES(316,'GOLD',116);
INSERT INTO MEDAL VALUES(317,'SILVER',117);
INSERT INTO MEDAL VALUES(318,'BRONZE',118);
INSERT INTO MEDAL VALUES(319,'GOLD',119);
INSERT INTO MEDAL VALUES(320,'SILVER',124);


-- ============================================================
-- CODE FOR DISPLAYING MEDAL DATA
-- ============================================================

SELECT * FROM MEDAL;
