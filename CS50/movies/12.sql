-- In 12.sql, write a SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.
-- Your query should output a table with a single column for the title of each movie.
-- You may assume that there is only one person in the database with the name Johnny Depp.
-- You may assume that there is only one person in the database with the name Helena Bonham Carter.

SELECT title from movies, stars, people
WHERE people.id = stars.person_id
AND stars.movie_id = movies.id
AND people.name= 'Johnny Depp' AND movies.title IN
(SELECT title from movies, stars, people
WHERE movies.id = stars.movie_id
AND people.id = stars.person_id
AND people.name = 'Helena Bonham Carter')