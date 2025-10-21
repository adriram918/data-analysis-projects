-- Question 1
-- from dbo.books - average_rating
--From dbo.rating - user_id, rating


SELECT count(*) AS user_count
FROM (
SELECT user_id
FROM BooksDB.dbo.ratings AS r
WHERE rating >(
SELECT average_rating
FROM BooksDB.dbo.books AS b
WHERE b.book_id = r.book_id
)
GROUP BY user_id)
AS qualifying_users

--Question 2 all the book ids of all books that have over 1000 ratings of 1 star
--or over 1000 ratings of 5 stars

SELECT book_id
FROM BooksDB.dbo.ratings
WHERE book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.ratings
    WHERE rating = 1
    GROUP BY book_id
    HAVING COUNT(*) > 1000
)
OR book_id IN (
    SELECT book_id
    FROM BooksDB.dbo.ratings
    WHERE rating = 5
    GROUP BY book_id
    HAVING COUNT(*) > 1000
)

-- Question 3 is the same as 2

-- Question 4 
SELECT book_id
FROM BooksDB.dbo.books
WHERE book_id IN (
  SELECT  book_id FROM BooksDB.dbo.books
  WHERE language_code = 'en-US'
    )
    AND book_id IN (
        SELECT book_id
        FROM BooksDB.dbo.books
        WHERE language_code <> 'en-GB'
    )

--Question 5
SELECT tag_id, tag_name 
FROM BooksDB.dbo.tags
WHERE tag_id IN (
    SELECT tag_id
    FROM BooksDB.dbo.book_tags
    WHERE count > 100000
)