--Question 1 
--List of book title that has multiple authors 
SELECT title, authors
FROM BooksDB.dbo.Books
WHERE authors LIKE '%,%'

--Question 2
-- Need books table and tags table 
-- Tag- tag_name and tag_id
-- Book title 

SELECT title
FROM booksDB.dbo.books
WHERE book_id IN (
    SELECT goodreads_book_id
    FROM booksDB.dbo.book_tags
    WHERE tag_id IN (
        SELECT tag_id
        FROM booksDB.dbo.tags
        WHERE tag_name LIKE '%meditation%'
    )
)

-- Question 3 
-- average rating 4.2 
SELECT books.title, books.original_title, books.average_rating 
FROM BooksDB.dbo.books
WHERE books.average_rating >= 4.2 
  AND books.original_title IS NOT NULL
  AND books.title = books.original_title
ORDER BY books.average_rating DESC

--Question 4
SELECT b.original_publication_year, b.title
FROM BooksDB.dbo.books AS b 
WHERE b.average_rating < (SELECT AVG(r.rating) AS Reader
                          FROM BooksDB.dbo.ratings AS r
                          WHERE r.book_id = b.book_id)
-- Part B:
ORDER BY b.original_publication_year, b.title;