/* customers tablosunda, soyisimleri Sch veya Go ile başlayan müşterilerin FirstName, 
LastName ve City bilgilerini listeleyen sorguyu yazınız*/

SELECT FirstName, LastName, City 
FROM customers
WHERE LastName like 'Sch%' or LastName like 'Go%';

/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
-- COUNT
------------------------------------------------------------------------------
/* invoices tablosunda kaç adet fatura bulunduğunu döndüren sorgu yazınız */

SELECT count(*)
FROM invoices;

SELECT count(BillingState) --null olanlar sayılmaz
FROM invoices;


--Aşağıda sadece null'ları saydırmış olduk.
SELECT count(*) as num_of_null
FROM invoices
WHERE BillingState IS NULL

SELECT count(*) - count(billingstate) as null_sayısı
from invoices;

/* tracks tablosunda kaç adet farklı Composer bulunduğunu döndüren sorguyu yazınız*/
SELECT count(DISTINCT Composer) as number_of_composer
FROM tracks;

-- MIN,MAX
-------------------------------------------------------------------------------------------------	
/* tracks tablosundaki şarkı süresi en kısa olan şarkının adını ve süresi listeleyen
sorguyu yaziniz */

SELECT name, min(milliseconds) as min_duration 
FROM tracks;

SELECT name, min(milliseconds)/1000.0 as min_duration_sec
FROM tracks;

/*students tablosundaki en düşük ve en yüksek notu listeleyen sorguyu yazınız */
SELECT min(grade) as min_grade, max(grade) as max_grade
FROM students

-- SUM,AVG
-------------------------------------------------------------------------------------------------	
/* invoices  tablosundaki faturaların toplam değerini listeyiniz */
SELECT sum(total)
FROM invoices;
