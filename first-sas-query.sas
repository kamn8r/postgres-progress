PROC SQL;
CREATE TABLE WORK.query AS
SELECT Make , Model , MSRP , Invoice , MPG_City , MPG_Highway , Weight , Wheelbase , 'Length'n FROM SASHELP.CARS WHERE Invoice>30000 ORDER BY Invoice;
RUN;
QUIT;

PROC DATASETS NOLIST NODETAILS;
CONTENTS DATA=WORK.query OUT=WORK.details;
RUN;

PROC PRINT DATA=WORK.details;
RUN;
