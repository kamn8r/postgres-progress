CREATE TABLE "customer" (
  "customerId" char(12),
  "firstName" varchar(40),
  "lastName" varchar(40),
  "address" varchar(40),
  "phone" char(10),
  "transactionId" char(12),
  "filmCount" int,
  "damages" int,
  "flag" boolean,
  PRIMARY KEY ("customerId")
);

CREATE INDEX "FK" ON  "customer" ("transactionId");

CREATE TABLE "actor" (
  "firstName" varchar(40),
  "lastName" varchar(40),
  "filmId" char(12),
  "actorId" char(12),
  PRIMARY KEY ("actorId")
);

CREATE INDEX "FK" ON  "actor" ("filmId");

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
  PRIMARY KEY ("storeid")
);

CREATE INDEX "FK" ON  "film" ("filmId", "distributorId", "actorId", "directorId");

CREATE TABLE "director" (
  "firstName" varchar(40),
  "lastName" varchar(40),
  "filmId" char(12),
  "directorId" char(12)
);

CREATE INDEX "FK" ON  "director" ("filmId");

CREATE TABLE "employee" (
  "employeeId" char(12),
  "firstName" varchar(40),
  "lastName" varchar(40),
  "address" varchar(40),
  "phone" char(10),
  "transactionId" char(12),
  "filmCount" int,
  "damages" int,
  "flag" boolean,
  "manager" varchar(40),
  PRIMARY KEY ("employeeId")
);

CREATE INDEX "FK" ON  "employee" ("transactionId");

CREATE TABLE "genre" (
  "category" varchar(40),
  "genreId" char(12),
  PRIMARY KEY ("genreId")
);

CREATE TABLE "transactions" (
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
  PRIMARY KEY ("transactionId")
);

CREATE INDEX "FK" ON  "transactions" ("storeId", "filmId", "customerId", "employeeId");

CREATE TABLE "returns" (
  "lateFees" int,
  "damages" int,
  "filmId" char(12),
  "storeId" char(12),
  "customerId" char(12),
  "employeeId" char(12),
  "quantityDVD" int,
  "quantityVHS" int,
  "returnId" char(12),
  PRIMARY KEY ("returnId")
);

CREATE INDEX "FK" ON  "returns" ("filmId", "storeId", "customerId", "employeeId");

CREATE TABLE "inventory" (
  "inventoryId" char(12),
  "filmId" char(12),
  "storeId" char(12),
  "distributorId" char(12),
  "quantityDVD" int,
  "quantityVHS" int,
  "availableCopies" int,
  PRIMARY KEY ("inventoryId")
);

CREATE INDEX "FK" ON  "inventory" ("filmId", "storeId");

