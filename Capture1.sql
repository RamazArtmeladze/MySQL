--Capture 1 

CREATE TABLE capture1 AS
SELECT
  CASE 
    WHEN MONTH(invoice_date) BETWEEN 1 AND 6 THEN 'first half of 2019'
    ELSE 'second half of 2019'
  END AS data_range,
  SUM(invoice_total) AS total_sales,
  SUM(payment_total) AS total_payment,
  SUM(invoice_total) - SUM(payment_total) AS what_we_expect
FROM invoices
GROUP BY CASE 
    WHEN MONTH(invoice_date) BETWEEN 1 AND 6 THEN 'first half of 2019'
    ELSE 'second half of 2019'
  END;
