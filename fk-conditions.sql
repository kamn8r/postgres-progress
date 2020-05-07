ALTER TABLE customer ADD CONSTRAINT transactionx_identifier
FOREIGN KEY (transactionId)
REFERENCES transactionx (transactionId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
