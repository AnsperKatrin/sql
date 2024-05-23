/* 7)	Väljastada kliendid viimase aasta jooksul tehtud 
tellimuste põhjal kulutatud summa järgi. */

SELECT
    first_name, last_name, ROUND(SUM(price), 2) AS total
FROM
    orders
        LEFT JOIN
    clients ON orders.client_id = clients.id
        LEFT JOIN
    books ON books.id = orders.book_id
WHERE
    YEAR(order_date) = (SELECT MAX(YEAR(order_date)) FROM orders)
GROUP BY clients.id
ORDER BY SUM(price) DESC;
