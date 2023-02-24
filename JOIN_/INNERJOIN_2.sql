--SEH�RLERE G�RE TOPLAM VER�LEN S�PAR�� M�KTAR�
--SEH�RAD�
--TOPLAM S�PAR�S TUTARI
--TOPLAM S�PAR�� ADED�
--TOPLAM S�PAR�� SAYISI

SELECT CT.CITY AS SEHIRADI ,
SUM(OD.LINETOTAL) AS TOPLAM,
SUM(OD.AMOUNT) AS ADEDI,
COUNT(OD.ID) AS SAYISI
FROM ORDERS O 
INNER JOIN USERS U ON U.ID=O.USERID
INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
INNER JOIN CITIES CT ON CT.ID=A.CITYID
INNER JOIN TOWNS T ON T.ID=A.TOWNID
INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
INNER JOIN INVOICES I ON I.ORDERID=O.ID
INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
INNER JOIN ITEMS ITM ON ITM.ID=ITEMID
 GROUP BY CT.CITY 
 ORDER BY CT.CITY ASC