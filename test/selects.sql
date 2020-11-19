select c.name, b.title, t.type
from transactions as t
join books as b
on t.book_id = b.book_id
join clients as c
on t.client_id =c.client_id;

SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors AS a
LEFT JOIN books AS b
ON b.author_id = a.author_id
GROUP BY a.author_id;