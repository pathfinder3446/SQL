-- SUM,AVG
-------------------------------------------------------------------------------------------------	
/* invoices  tablosundaki faturaların toplam değerini listeyiniz */
SELECT sum(Total)
FROM invoices;


/* invoices  tablosundaki faturaların ortalama değerini listeyiniz */
SELECT round(AVG(total),2) as avg_amount -- ROUNDLA YUVARLAYIP KAÇ BASAMAK İSTİYORSAK BELİRLEYEBİLİYORUZ.
FROM invoices

/* tracks tablosundaki şarkıların ortalama süresinden daha uzun olan 
şarkıların adlarını listeleyiniz */
SELECT avg(milliseconds) as avg_duration
FROM tracks;

SELECT name, Milliseconds
FROM tracks
WHERE Milliseconds > (SELECT avg(milliseconds) as avg_duration
FROM tracks);  --SUBQUERY YAPMIŞ OLDUK.

