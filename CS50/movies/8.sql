-- In 8.sql, write a SQL query to list the names of all people who starred in Toy Story.
-- Your query should output a table with a single column for the name of each person.
-- You may assume that there is only one movie in the database with the title Toy Story.

-- SELECT name from people
-- WHERE people.id IN
-- (SELECT person_id FROM
-- stars)
SELECT name FROM people, stars, movies
WHERE people.id = stars.person_id
AND stars.movie_id = movies.id
AND title = 'Toy Story';