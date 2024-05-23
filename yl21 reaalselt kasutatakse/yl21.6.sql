/* 6)	Täidetud tellimuste arv viimase aasta jooksul ja müükide summa. */

SELECT
    COUNT(*) AS "Tellimuste arv",
    ROUND(SUM(price), 2) "Müükide summa",
    YEAR(orders.order_date) "Viimane aasta"
FROM orders
LEFT JOIN books on orders.book_id = books.id
WHERE YEAR(orders.order_date) = (SELECT MAX(YEAR(order_date)) FROM orders);