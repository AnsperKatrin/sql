/* 3)	Raamatute nimekiri: raamatud, mis on ilmunud enne 1970. aastat on kasutatud 
ja mille hind on väiksem kui 20 eurot. 
Väljastada ainult pealkiri, aasta, hind ja tüüp veerud. (tulemus 2 kirjet) */

SELECT * FROM d123452_bookstore.books;

SELECT * FROM books 
WHERE release_date<="1970" 
AND price<="20" 
ORDER BY title, release_year, price, data_type;