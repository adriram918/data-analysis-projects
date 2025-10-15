--Question 1 - Part A 
SELECT LEN(title) AS Length_title
FROM BooksDB.dbo.books
ORDER BY LEN(title) DESC;

-- Part B 
SELECT title, LEN(title) AS Length_title
FROM BooksDB.dbo.books
ORDER BY LEN(title) DESC;

--Question 2 -- Part A
SELECT LEN(authors) AS Author_length
FROM BooksDB.dbo.books
ORDER BY LEN(authors) ASC;

-- Part B
SELECT authors, LEN(authors) AS Author_length
FROM BooksDB.dbo.books
ORDER BY LEN(authors) ASC;

-- Question 3 
SELECT COUNT(*) AS The_title_count
FROM BooksDB.dbo.books
WHERE title like '%the%'

--No, there is not difference 

-- Question 4
SELECT COUNT(*) AS Authorsname_z
FROM BooksDB.dbo.books
WHERE authors like 'Z%'
-- There are 11

-- Question 5 
SELECT COUNT(*) AS non_eng_books
from [BooksDB].[dbo].[books]
WHERE 
    LEFT(language_code, 2) != 'en' AND
    LEFT(language_code, 3) != 'eng' AND
    LEFT(language_code, 5) != 'en-US' AND
    LEFT(language_code, 5) != 'en-UK'

--Question 6 
SELECT COUNT(*) AS non_eng_books
from [BooksDB].[dbo].[books]
WHERE 
    SUBSTRING(language_code, 1, 2) != 'en' AND
    SUBSTRING(language_code, 1, 3) != 'eng' AND
    SUBSTRING(language_code, 1, 5) != 'en-US' AND
    SUBSTRING(language_code, 1, 5) != 'en-UK'

-- Question 7 Part A
SELECT CONCAT(title, ' by ', authors, ' in ', language_code) AS book_info
FROM booksdb.dbo.books

-- Part B
SELECT title, authors, language_code
FROM booksdb.dbo.books
WHERE title IS NULL OR authors IS NULL OR language_code IS NULL; 
-- Language code contains several null values 

--Question 8
SELECT 
  title + ' by ' + authors + ' in ' + COALESCE(language_code, 'unknown') AS book_info
FROM booksdb.dbo.books;
