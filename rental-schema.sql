CREATE TABLE "customer" (
  "customerId" char(12),
  "firstName" varchar(40),
  "lastName" varchar(40),
  "phone" char(10),
  "transactionId" char(12),
  "filmCount" int,
  "damages" int,
  "flag" boolean,
  "street" varchar(40),
  "zipCode" int,
  "city" varchar(40),
  PRIMARY KEY ("customerId"),
	FOREIGN KEY ("transactionId") REFERENCES "transaction" ("transactionId")
);


CREATE TABLE "actor" (
  "firstName" varchar(40),
  "lastName" varchar(40),
  "filmId" char(12),
  "actorId" char(12),
  PRIMARY KEY ("actorId"),
	FOREIGN KEY ("filmId") REFERENCES "film" ("filmId")
);


CREATE TABLE "film" (
  "title" varchar(40),
  "filmId" char(12),
  "storeid" char(12),
  "distributorId" char(12),
  "rating" int,
  "summary" varchar(40),
  "actorId" char(12),
  "directorId" char(12),
  "awards" varchar(40),
  PRIMARY KEY ("filmId"),
	FOREIGN KEY ("actorId") REFERENCES "actor" ("actorId"),
	FOREIGN KEY ("directorId") REFERENCES "director" ("directorId")
);

CREATE TABLE "director" (
  "firstName" varchar(40),
  "lastName" varchar(40),
  "filmId" char(12),
  "directorId" char(12)
	PRIMARY KEY ("directorId"),
	FOREIGN KEY ("filmId") REFERENCES "film" ("filmId")
);


CREATE TABLE "employee" (
  "employeeId" char(12),
  "firstName" varchar(40),
  "lastName" varchar(40),
  "phone" char(10),
  "transactionId" char(12),
  "filmCount" int,
  "damages" int,
  "flag" boolean,
  "manager" varchar(40),
  "street" varchar(40),
  "zipCode" int,
  "city" varchar(40),
  PRIMARY KEY ("employeeId"),
	FOREIGN KEY ("transactionId") REFERENCES "transaction" ("transactionId")
);

CREATE TABLE "genre" (
  "category" varchar(40),
  "genreId" char(12),
	"filmId" char(12),
  PRIMARY KEY ("genreId")
	FOREIGN KEY ("filmId") REFERENCES "film" ("filmId")
);

CREATE TABLE "transaction" (
  "transactionId" char(12),
  "storeId" char(12),
  "transactionDate" date,
  "filmId" char(12),
  "customerId" char(12),
  "quantityDVD" int,
  "quantityVHS" int,
  "employeeId" char(12),
  "paymentAmount" int,
  "lateFees" int,
  PRIMARY KEY ("transactionId"),
	FOREIGN KEY ("filmId") REFERENCES "film" ("filmId"),
	FOREIGN KEY ("customerId") REFERENCES "customer" ("customerId"),
	FOREIGN KEY ("employeeId") REFERENCES "employee" ("employeeId")
);


CREATE TABLE "return" (
  "lateFees" int,
  "damages" int,
  "filmId" char(12),
  "storeId" char(12),
  "customerId" char(12),
  "employeeId" char(12),
  "quantityDVD" int,
  "quantityVHS" int,
  "returnId" char(12),
  PRIMARY KEY ("returnId"),
	FOREIGN KEY ("filmId") REFERENCES "film" ("filmId"),
	FOREIGN KEY ("customerId") REFERENCES "customer" ("customerId"),
	FOREIGN KEY ("employeeId") REFERENCES "employee" ("employeeId")

);



CREATE TABLE "inventory" (
  "inventoryId" char(12),
  "filmId" char(12),
  "storeId" char(12),
  "distributorId" char(12),
  "quantityDVD" int,
  "quantityVHS" int,
  "availableCopies" int,
  PRIMARY KEY ("inventoryId"),
	FOREIGN KEY ("filmId") REFERENCES "film" ("filmId")


);



