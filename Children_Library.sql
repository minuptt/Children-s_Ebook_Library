
CREATE DATABASE Child_Library;
USE Child_Library;

CREATE TABLE CATEGORY(Category_ID int(5) NOT NULL, 
						Category_Type varchar(30) NOT NULL, 
                        PRIMARY KEY (Category_ID));
                        
INSERT INTO CATEGORY VALUES (111,'advantures');
INSERT INTO CATEGORY VALUES (222,'comedy');
INSERT INTO CATEGORY VALUES (333,'scince');
INSERT INTO CATEGORY VALUES (444,'horror');
INSERT INTO CATEGORY VALUES (555,'action');
INSERT INTO CATEGORY VALUES (666,'history');
INSERT INTO CATEGORY VALUES (777,'fanciful');
INSERT INTO CATEGORY VALUES (888,'poetry');
INSERT INTO CATEGORY VALUES (999,'stories');
INSERT INTO CATEGORY VALUES (100,'education');

CREATE TABLE AUTHOR(Author_ID int(6) NOT NULL,
					FisrtName varchar(20) NOT NULL,
                    LastName varchar(20) NOT NULL,
                    Email varchar(100) NOT NULL,
                    PRIMARY KEY (Author_ID));

INSERT INTO AUTHOR VALUES (811,'Landry','Walker','landrywalker@gmail.com');
INSERT INTO AUTHOR VALUES (812,'Babara','Park','barbara.park@aol.com');
INSERT INTO AUTHOR VALUES (813,'Megan Frazer','Blakemore','megan.blakemore@meganfrazerblakemore.com');
INSERT INTO AUTHOR VALUES (814,'Max','Brallier','maxtheauthorguy@gmail.com');
INSERT INTO AUTHOR VALUES (825,'Rob','Elliott','rob.elliott.author@hotmail.com');
INSERT INTO AUTHOR VALUES (826,'Richard','Panchyk','Panchyk@yahoo.com');
INSERT INTO AUTHOR VALUES (827,'Robert','Frost','frost.187021@zylker.com');
INSERT INTO AUTHOR VALUES (838,'Dan','Gutman','dangut444@gmail.com');
INSERT INTO AUTHOR VALUES (839,'Jody','Carrington','info@drjodycarrington.com');
INSERT INTO AUTHOR VALUES (840,'Tricia','Goyer','contact@triciagoyer.com');

CREATE TABLE PUBLISHER(Publisher_ID int(5) NOT NULL,
						Pub_Name varchar(30) NOT NULL,
                        Address varchar(30) NOT NULL,
                        Email varchar(100) NOT NULL,
                        Author_ID int(6) NOT NULL,
                        PRIMARY KEY (Publisher_ID),
                        FOREIGN KEY (Author_ID) REFERENCES AUTHOR(Author_ID));
                 
INSERT INTO PUBLISHER VALUES (1001,'DC Comics','New York City, US','madsubs@midtowncomics.com',811);
INSERT INTO PUBLISHER VALUES (1002,'Random House, Inc','New York City, US','https://www.penguinrandomhouse.com/about-us/contact-us/',812);
INSERT INTO PUBLISHER VALUES (1003,'Aladdin','New York City, US','http://simonandschusterpublishing.com/aladdin/',813);
INSERT INTO PUBLISHER VALUES (1004,'Penguin Young Readers Group','London, UK','https://www.penguin.co.uk/company/about-us.html',814);
INSERT INTO PUBLISHER VALUES (1005,'Revell','Ada, MI','http://bakerpublishinggroup.com/revell/contact',825);
INSERT INTO PUBLISHER VALUES (1006,'Chicago Review Press','Chicago, IL','https://www.chicagoreviewpress.com/contact-crp-pages-37.php',826);
INSERT INTO PUBLISHER VALUES (1007,'MoonDance Press','Mission Viejo, CA','kate.essam@quarto.com',827);
INSERT INTO PUBLISHER VALUES (1008,'Harper Collins Publishers','New York, NY','harpercollins.en.cs@digitalriver.com',838);
INSERT INTO PUBLISHER VALUES (1009,'Impress','Canterbury, Kent, UK','https://www.impresspublishing.uk/contact',839);
INSERT INTO PUBLISHER VALUES (1000,'David C. Cook','Colorado Springs, CO','https://davidccook.org/',840);

CREATE TABLE STAFF(Staff_ID varchar(5) NOT NULL,
					FirstName varchar(20) NOT NULL,
                    LastName varchar(20) NOT NULL,
                    DOB date NOT NULL,
                    Gender varchar(5) NOT NULL,
                    Position varchar(20) NOT NULL,
                    PRIMARY KEY (Staff_ID));

INSERT INTO STAFF VALUES ('S702','Edward','Allen','1981-04-16','M','Librarian');
INSERT INTO STAFF VALUES ('S495','Maximillian','Myers','1983-06-08','F','Techinician');
INSERT INTO STAFF VALUES ('S835','Mandy','Handerson','1997-08-24','F','Assistant');
INSERT INTO STAFF VALUES ('S918','Sienna','Montgomery','1988-09-05','F','Computer Specialist');
INSERT INTO STAFF VALUES ('S916','Ryan','Payne','1982-10-11','M','Service Manager');
INSERT INTO STAFF VALUES ('S425','Mayble','Myers','1990-01-21','F','Librarian');
INSERT INTO STAFF VALUES ('S473','Frederick','Riley','1989-03-19','M','Computer Specialist');
INSERT INTO STAFF VALUES ('S664','Carina','Hall','1985-12-27','F','Librarian');
INSERT INTO STAFF VALUES ('S926','Paige','Andrews','1987-07-24','M','Librarian');
INSERT INTO STAFF VALUES ('S701','Sophia','Chapman','1992-03-11','F','Technician');

CREATE TABLE MEMBERS(Members_ID varchar(5) NOT NULL,
					 FirstName varchar(20) NOT NULL,
                     LastName varchar(20) NOT NULL,
                     Gender varchar(5) NOT NULL,
                     Email varchar(100) NOT NULL,
                     Registration_Date date NOT NULL,
                     PRIMARY KEY (Members_ID));
                     
INSERT INTO MEMBERS VALUES ('M1234','Jared','Foster','M','Jared.foster@gmail.com','2015-05-01');
INSERT INTO MEMBERS VALUES ('M1235','Ashton','Rogers','F','ashtonrogers@gmail.com','2015-05-01');
INSERT INTO MEMBERS VALUES ('M1237','Lucy','Carroll','F','lucylucy@gmail.com','2015-07-10');
INSERT INTO MEMBERS VALUES ('M1239','Ellia','Spencer','F','ellia.spencer.1@gmail.com','2015-08-08');
INSERT INTO MEMBERS VALUES ('M1241','Dani','Brown','F','danibrown@yahoo.com','2015-11-20');
INSERT INTO MEMBERS VALUES ('M1243','Tara','Grays','F','tatafgrays@aol.com','2015-11-22');
INSERT INTO MEMBERS VALUES ('M1245','Luke','Watson','M','lluke.watson@hotmail.com','2016-04-04');
INSERT INTO MEMBERS VALUES ('M1325','Oscar','Baker','M','oscardebaker@gmail.com','2016-09-13');
INSERT INTO MEMBERS VALUES ('M1329','Blake','Harris','M','blackcatharris@yahoo.com','2016-11-29');
INSERT INTO MEMBERS VALUES ('M1532','Phoebe','Elliot','F','phoebe.elliot@gmail.com','2016-12-07');

CREATE TABLE BOOK_STATUS (Sta_ID int(5) NOT NULL, 
						  Sta_Type varchar(30) NOT NULL,
                          PRIMARY KEY (Sta_ID));


INSERT INTO BOOK_STATUS VALUES (11001,'Available');
INSERT INTO BOOK_STATUS VALUES (11000, 'NOT Available');

CREATE TABLE BOOK(Book_ID int(5), 
					Book_Title varchar(100) NOT NULL, 
                    Sta_ID int(5) NOT NULL, 
                    Category_ID int(20) NOT NULL, 
                    ISBN varchar(30) NOT NULL, 
                    Author_ID int(6) NOT NULL, 
                    Publisher_ID int (5) NOT NULL,
                    PRIMARY KEY (Book_ID),
                    FOREIGN KEY (Sta_ID) REFERENCES BOOK_STATUS(Sta_ID),
                    FOREIGN KEY (Author_ID) REFERENCES AUTHOR(Author_ID),
                    FOREIGN KEY (Publisher_ID) REFERENCES PUBLISHER(Publisher_ID));

INSERT INTO BOOK VALUES (1,'Supergirl',11001,110,'930-3984-83',825,1001);
INSERT INTO BOOK VALUES (2,'Junie B., First Grader',11001,222,'423-8604-88',812,1002);
INSERT INTO BOOK VALUES (3,'Frankie Sparks and the Class Pet',11000,333,'847-5571-47',813,1004);
INSERT INTO BOOK VALUES (4,'The Last Kids on Earth and the Cosmic Beyond',11001,444,'775-9456-95',814,1003);
INSERT INTO BOOK VALUES (5,'Knock-knock Jokes for Kids',11001,222,'639-4718-74',811,1009);
INSERT INTO BOOK VALUES (6,'World War II for Kids',11001,666,'244-8728-99',826,1008);
INSERT INTO BOOK VALUES (7,'Poetry for Kids',11000,777,'840-5424-22',827,1006);
INSERT INTO BOOK VALUES (8,'Back to School, Weird Kids Rule!',11001,888,'415-0031-28',839,1005);
INSERT INTO BOOK VALUES (9,'Kids These Days',11001,999,'921-2386-81',838,1000);
INSERT INTO BOOK VALUES (10,'Calming angry kids',11001,100,'928-3279-29',840,1007);


CREATE TABLE CHECKOUT(Checkout_ID int(5) NOT NULL,
					  Checkout_Date date NOT NULL,
                      Members_ID varchar(5) NOT NULL,
                      Book_ID int(5) NOT NULL,
                      Staff_ID varchar(5) NOT NULL,
                      Return_Date date NOT NULL,
                      PRIMARY KEY (Checkout_ID),
                      FOREIGN KEY (Members_ID) REFERENCES MEMBERS(Members_ID),
                      FOREIGN KEY (Book_ID) REFERENCES BOOK(BOOK_ID),
                      FOREIGN KEY (Staff_ID) REFERENCES STAFF(Staff_ID));

INSERT INTO CHECKOUT VALUES (1656,'2017-07-01','M1234',1,'S702','2017-07-04');
INSERT INTO CHECKOUT VALUES (1657,'2017-07-05','M1234',2,'S495','2017-07-08');
INSERT INTO CHECKOUT VALUES (1658,'2017-07-10','M1234',5,'S835','2017-07-15');
INSERT INTO CHECKOUT VALUES (1659,'2017-07-18','M1234',9,'S701','2017-07-22');
INSERT INTO CHECKOUT VALUES (1660,'2017-07-25','M1234',3,'S916','2017-07-28');
INSERT INTO CHECKOUT VALUES (1661,'2017-07-30','M1234',4,'S425','2017-08-03');
INSERT INTO CHECKOUT VALUES (1662,'2017-08-07','M1234',7,'S473','2017-08-10');
INSERT INTO CHECKOUT VALUES (1663,'2017-08-09','M1234',8,'S664','2017-08-13');
INSERT INTO CHECKOUT VALUES (1664,'2017-08-15','M1234',6,'S926','2017-08-18');
INSERT INTO CHECKOUT VALUES (1665,'2017-08-20','M1234',10,'S918','2017-08-25');

CREATE TABLE CHECKIN(Checkin_ID int(5) NOT NULL,
					 Checkin_Date date NOT NULL,
                     Book_ID int(5) NOT NULL,
					 Return_Date date NOT NULL,
                     Staff_ID varchar(5) NOT NULL,
					 PRIMARY KEY (Checkin_ID),
					 FOREIGN KEY (Book_ID) REFERENCES BOOK(BOOK_ID),
					 FOREIGN KEY (Staff_ID) REFERENCES STAFF(Staff_ID));
					 
INSERT INTO CHECKIN VALUES (8801,'2017-07-03',1,'2017-07-04','S702');
INSERT INTO CHECKIN VALUES (8802,'2017-07-08',2,'2017-07-08','S495');
INSERT INTO CHECKIN VALUES (8807,'2017-07-28',3,'2017-07-28','S835');
INSERT INTO CHECKIN VALUES (8809,'2017-08-02',4,'2017-08-03','S918');
INSERT INTO CHECKIN VALUES (8812,'2017-07-13',5,'2017-07-05','S916');
INSERT INTO CHECKIN VALUES (8805,'2017-08-15',6,'2017-08-15','S926');
INSERT INTO CHECKIN VALUES (8823,'2017-08-07',7,'2017-08-10','S664');
INSERT INTO CHECKIN VALUES (8820,'2017-08-10',8,'2017-08-13','S473');
INSERT INTO CHECKIN VALUES (8821,'2017-07-20',9,'2017-07-22','S701');
INSERT INTO CHECKIN VALUES (8822,'2017-08-25',10,'2017-08-25','S425');


