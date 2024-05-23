/* 9)	Raamatute nimekiri, mille hind on keskmisest kõrgem. (1096) */

SELECT * FROM books

WHERE price > (SELECT avg(price) FROM books);