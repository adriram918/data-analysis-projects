--question 1
SELECT TOP 100 book_id, authors, title, average_rating AS "average_rating"
FROM Booksdb.dbo.books
ORDER BY average_rating DESC

-- return least popular book
SELECT TOP 100 book_id, authors, title, average_rating AS "average_rating"
FROM Booksdb.dbo.books
ORDER BY average_rating ASC

-- question 3 
Select *
FROM BooksDB.dbo.book_tags
ORDER BY "count" DESC

--question 4 
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_id = 30574

--question 5 
SELECT COUNT(books_count)
FROM Booksdb.dbo.books
WHERE original_publication_year >= 2000 and original_publication_year <= 2010;

--question 6
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title like '%happy%'

--question 7
SELECT authors, title, average_rating 
FROM BooksDB.dbo.books
WHERE authors = 'bill watterson' OR authors = 'J.K. Rowling' or authors = 'Brandon Sanders'
ORDER BY title ASC, average_rating DESC
--When we do it like this the first three authors are Bill Watterson and J.K. Rowling. 

--question 8 
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE authors BETWEEN 'rock' AND 'roll'
-- The number of authors whose name is between rock and roll is 25


-- Part 2 question 1
--which author has written the most books?
SELECT authors, COUNT(original_title) AS book_count
FROM BooksDB.dbo.books
GROUP BY authors
ORDER BY COUNT(original_title) DESC;
-- The author that has written the most books is Nora Roberts 

-- What is the author with best rating?
Select authors, AVG(average_rating) AS Average_rating
FROM BooksDB.dbo.books
GROUP BY authors
ORDER BY AVG(average_rating) DESC; 
--Anonymous, Lane T.Dennis, Wayne A. Grudem are the authors with the best average rating 