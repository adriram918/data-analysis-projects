--  Question 1
-- tags tag_id, tag_name 
SELECT bt.tag_id, COUNT(bt.tag_id) AS tag_count,
t.tag_name
FROM BooksDB.dbo.tags AS t
LEFT JOIN BooksDB.dbo.book_tags AS bt
ON t.tag_id = bt.tag_id
GROUP BY bt.tag_id, t.tag_name
HAVING tag_name LIKE '%woman%' OR t.tag_name LIKE '%female%'
ORDER BY tag_count DESC;


-- Question 2
-- books author, title, ratings, book_id
--Book_tag goodread books id, tag_id
SELECT b.authors, b.title, b.average_rating, bt.tag_id
FROM BooksDB.dbo.books AS b 
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.book_id = bt.goodreads_book_id 
WHERE b.title LIKE '%irish%' OR b.title LIKE '%leprechaun%'

--Part 2 
-- I chose May 
-- I will promote Mother's Day and Cinco de Mayo 

-- Mother's Day query -- Book with title related to motherhood with the best ratings 
-- Join dbo.ratings and dbo.books -- r.rating, b.title

SELECT b.title, b.book_id, AVG(r.rating) AS avg_rating, COUNT(*) AS rating_count
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.ratings AS r
ON b.book_id = r.book_id
WHERE b.title LIKE '%children%' 
GROUP BY b.book_id, b.title
ORDER BY avg_rating DESC;
-- Among the best rated books by users is The Five Love Languages of Children - We can throw a promo on that one during Mother's Day

-- For the Cinco de Mayo
SELECT bt.tag_id, COUNT(bt.tag_id) AS tag_count, t.tag_name
FROM BooksDB.dbo.tags AS t
LEFT JOIN BooksDB.dbo.book_tags AS bt
ON t.tag_id = bt.tag_id
GROUP BY bt.tag_id, t.tag_name
HAVING tag_name LIKE '%mexican%'
ORDER BY tag_count DESC;
-- I found different tags for Mexican related books.