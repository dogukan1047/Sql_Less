-- stored procedure


INSERT INTO WORKERS 
( WORKERCODE, WORKERNAME, GENDER, BIRTHDATE, TCNO, WORKERBARCODE)
VALUES( '12345678912','MEHMET','E','19900101','12345678912',NEWID())


INSERT INTO WORKERTRANSACTIONS 
( WORKERID, DATE_, IOTYPE, GATEID)
VALUES
(1,'2020-04-05 08:00:00','G',1)

INSERT INTO WORKERTRANSACTIONS 
( WORKERID, DATE_, IOTYPE, GATEID)
VALUES
(1,'2020-04-05 20:25:00','C',1)

SELECT * FROM WORKERS

SELECT * FROM WORKERS WHERE WORKERBARCODE='B8871528-C5F8-465E-8ADD-B4F1B9BF7BB8'

ALTER PROCEDURE SP_CARD_CONTROL
@WORKERBARCODE AS VARCHAR(50)
AS
BEGIN
	IF EXISTS(SELECT *FROM WORKERS WHERE WORKERBARCODE=@WORKERBARCODE)
	BEGIN
		SELECT 'KART DOGRU'
	END
	ELSE
	BEGIN
		SELECT 'KART GECERSIZ'
	END
END


EXEC SP_CARD_CONTROL 'B8871528-C5F8-465E-8ADD-B4F1B9BF7BB8'
