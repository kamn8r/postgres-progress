CREATE TABLE customer 
  ( 
     customerid    CHAR(12), 
     firstname     VARCHAR(40), 
     lastname      VARCHAR(40), 
     phone         CHAR(10), 
     transactionid CHAR(12), 
     filmcount     INT, 
     damages       INT, 
     flag          BOOLEAN, 
     street        VARCHAR(40), 
     zipcode       INT, 
     city          VARCHAR(40), 
     PRIMARY KEY (customerid)
); 

CREATE TABLE actor 
  ( 
     firstname VARCHAR(40), 
     lastname  VARCHAR(40), 
     filmid    CHAR(12), 
     actorid   CHAR(12), 
     PRIMARY KEY (actorid) 
); 

CREATE TABLE film 
  ( 
     title         VARCHAR(40), 
     filmid        CHAR(12), 
     storeid       CHAR(12), 
     distributorid CHAR(12), 
     rating        INT, 
     summary       VARCHAR(40), 
     actorid       CHAR(12), 
     directorid    CHAR(12), 
     awards        VARCHAR(40), 
     PRIMARY KEY (filmid)
); 

CREATE TABLE director 
  ( 
     firstname  VARCHAR(40), 
     lastname   VARCHAR(40), 
     filmid     CHAR(12), 
     directorid CHAR(12), 
     PRIMARY KEY (directorid)
); 

CREATE TABLE employee 
  ( 
     employeeid    CHAR(12), 
     firstname     VARCHAR(40), 
     lastname      VARCHAR(40), 
     phone         CHAR(10), 
     transactionid CHAR(12), 
     filmcount     INT, 
     damages       INT, 
     flag          BOOLEAN, 
     manager       VARCHAR(40), 
     street        VARCHAR(40), 
     zipcode       INT, 
     city          VARCHAR(40), 
     PRIMARY KEY (employeeid)
); 

CREATE TABLE genre 
  ( 
     category VARCHAR(40), 
     genreid  CHAR(12), 
     filmid   CHAR(12), 
     PRIMARY KEY (genreid) 
); 

CREATE TABLE transactionx 
  ( 
     transactionid   CHAR(12), 
     storeid         CHAR(12), 
     transactiondate DATE, 
     filmid          CHAR(12), 
     customerid      CHAR(12), 
     quantitydvd     INT, 
     quantityvhs     INT, 
     employeeid      CHAR(12), 
     paymentamount   INT, 
     latefees        INT, 
     PRIMARY KEY (transactionid)
); 

CREATE TABLE returnx 
  ( 
     latefees    INT, 
     damages     INT, 
     filmid      CHAR(12), 
     storeid     CHAR(12), 
     customerid  CHAR(12), 
     employeeid  CHAR(12), 
     quantitydvd INT, 
     quantityvhs INT, 
     returnid    CHAR(12), 
     PRIMARY KEY (returnid)
); 

CREATE TABLE inventory 
  ( 
     inventoryid     CHAR(12), 
     filmid          CHAR(12), 
     storeid         CHAR(12), 
     distributorid   CHAR(12), 
     quantitydvd     INT, 
     quantityvhs     INT, 
     availablecopies INT, 
     PRIMARY KEY (inventoryid)
); 

