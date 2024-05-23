/* 1)	Raamatute tabelist kogu laoväärtus. 
aritmeetika operaatorid (17170638.41) */

SELECT * FROM books;

SELECT ROUND(SUM(price * stock_saldo), 2)AS stock_saldo
FROM books;