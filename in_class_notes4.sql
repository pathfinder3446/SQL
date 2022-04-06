/*===================================================
 GROUP BY
====================================================*/

/* tracks tablosundaki her bir Bestecisinin (Composer) toplam şarkı sayısını 
Besteci adına göre gruplandırarak listeleyen sorguyu yazınız. */

SELECT Composer, count(name)
FROM tracks
GROUP BY Composer;

SELECT Composer, count(name)
FROM tracks
WHERE Composer IS NOT NULL
GROUP BY Composer;

/* invoices tablosundaki her bir ülkenin (BillingCountry) fatura ortalamalarını 
hesaplayan ve ülke bilgileri ile listeleyen sorguyu yazınız.*/
SELECT BillingCountry, round(avg(Total),2) as avg_amount
FROM invoices
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2011-12-31 00:00:00'  --Sonradan tarih aralığı vs girmiş olduk.
GROUP BY BillingCountry;
