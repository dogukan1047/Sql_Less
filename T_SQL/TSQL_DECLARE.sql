--  TSQL KOdlar�
DECLARE @Name AS VARCHAR(100)

--SELECT @NAME

SET @Name='DOGUKAN'

SELECT @Name

DECLARE @AGE AS INT ,
@NUM AS INT,
@NUM1 AS INT

SET @AGE=20
SET @NUM=15
SET @NUM1=21

SELECT @AGE

DECLARE @TOPLAM AS INT
SET @TOPLAM=@NUM+@NUM1

SELECT @TOPLAM

DECLARE @NAME AS VARCHAR(100),
@SURNNAME AS VARCHAR(100)

SELECT @NAME=NAME1,@SURNAME=SURNNAME
FROM NAMES WHERE ID=1

