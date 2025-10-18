-- Question 1
Query 1: LEFT JOIN
SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating;

--Part A: Left table is dbo.books and Right table is dbo.to_read

-- Part B: 
SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating;

--We are only keeping rows where we have a match, all the null rows were deleted. 

-- Question 2
SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id;

-- Part A: Left table is dbo.books and Right table is dbo.to_read

-- Part B: Now we have the joined column which is book_id and the rest of the columns from the Right table (user_id), the other columns
--title, average_rating and books_count are from the left table, then is filled with null values.

-- Question 3
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE average_rating > 4;

/* We may want to use full when we would like to get complete information from all columns
instead of just the matched columns */

-- Question 4
--Part A: It will only give us the columns that are a match between the two tables. Nothing else. 
/*Part B: I don't think is necessary for this case, because it will only give us columns where there is a match
and we have values within */
--Part C: 
SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
ORDER BY tr.book_id;

-- Question 5 
-- Part A
SELECT b.title, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.books AS b 
LEFT JOIN BooksDB.dbo.book_tags AS bt 
ON b.best_book_id = bt.goodreads_book_id
GROUP BY b.title
ORDER BY tag_count DESC;
-- Select Poems and was tagged 400 times

-- Part B 
SELECT b.title, b.best_book_id, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.books AS b 
LEFT JOIN BooksDB.dbo.book_tags AS bt 
ON b.best_book_id = bt.goodreads_book_id
GROUP BY b.title, b.best_book_id
ORDER BY tag_count DESC; 
-- 100 tags have been used for the most tagged  

-- Part C 
SELECT b.title, bt.tag_id
FROM BooksDB.dbo.books AS b 
LEFT JOIN BooksDB.dbo.book_tags AS bt 
ON b.best_book_id = bt.goodreads_book_id
WHERE b.best_book_id = 952
-- 

-- Question 6 
--Part A
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name LIKE '%dogs%'

-- tag_name about-dogs tag_id 1472
-- I need books and book tags tables / title and tag count

--Part B
SELECT b.title, bt.tag_id, COUNT(bt.tag_id) AS tag_count
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.goodreads_book_id 
WHERE bt.tag_id = 1472
GROUP BY bt.tag_id, b.title
-- I get two titles, each has one tag_count: Inside of a Dog: What Dogs See, Smell and Know, and One Good Dog 

--Question 7 
-- Part A - I can join them using book_id 
SELECT b.title, tr.user_id 
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id

-- Part B
SELECT b.title, COUNT(tr.user_id) AS user_count
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
GROUP BY b.title
ORDER BY user_count DESC;
-- title: The Hitchhiker's Guide to the Galaxy 

-- Question 8 
--Part A
SELECT TOP 10 tr.user_id, COUNT(b.title) AS books_count
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
GROUP BY tr.user_id
ORDER BY books_count DESC;

-- Part B 
SELECT b.title
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE user_id = 11932
