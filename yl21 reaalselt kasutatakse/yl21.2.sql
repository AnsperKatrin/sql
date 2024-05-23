/* 2)	Raamatute nimekiri: alates 2010 aastast välja antud raamatud, mis on uued. 
Sorteerida pealkirja järgi tähestikulises järjekorras.
SELECT * FROM tabel WHERE tingimus1 AND tinigmus2 ORDER BY veerg;
(tulemus 113 kirjet) */


SELECT * FROM d123452_bookstore.books;

SELECT * FROM books 
WHERE release_date>="2010" 
AND type="new" 
ORDER BY title ASC;