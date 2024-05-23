/* 8)	Viimase aasta top 10 enim müüdud raamatud. LIMIT */

SELECT 
    title AS 'Pealkiri', COUNT(*) AS 'Müüdud'
FROM
    orders
        LEFT JOIN
    books ON orders.book_id = books.id
WHERE
    YEAR(order_date) = (SELECT MAX(YEAR(order_date))
        FROM orders)
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 10
