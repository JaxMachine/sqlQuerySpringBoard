-- Comments in SQL Start with dash-dash --

--Query 1 --
SELECT * FROM analytics WHERE id = 1880;

--Query 2 --
SELECT app_name, id from analytics WHERE last_updated = '2018-08-01';

--Query 3 --
SELECT category, COUNT(*) FROM analytics GROUP BY category;

--Query 4 --
SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

--Query 5 --
SELECT * FROM analytics WHERE reviews > 4.8 ORDER BY reviews DESC LIMIT 1;

--Query 6 --
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;

--Query 7 --
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC;

--Query 8 --
SELECT * FROM analytics WHERE min_installs < 50 AND rating IS NOT NULL ORDER BY rating DESC;

--Query 9 --
SELECT app_name FROM analytics WHERE rating < 3 AND reviews > 10000;

--Query 10 --
SELECT * FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

--Query 11 -- 
SELECT * FROM analytics ORDER BY last_updated LIMIT 1;

--Query 12 --
SELECT * FROM analytics ORDER BY price DESC LIMIT 1;

--Query 13 -- 
SELECT SUM(reviews) AS "Number of Reviews on Play" FROM analytics;

--Querey 14 --
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

--Query 15 --
SELECT app_name AS "Name", reviews AS "Number of Reviews", min_installs AS "Install Number", min_installs / reviews AS "Install to Review Ratio" FROM analytics WHERE min_installs > 100000;

--Further Study Query 1--

SELECT app_name AS "Name", rating AS "Rating", category FROM analytics WHERE (rating, category) in (SELECT MAX(rating), category FROM analytics WHERE min_installs >= 50000 GROUP BY category) ORDER BY category;

--Further Study Query 2 --
SELECT * FROM analytics WHERE app_name ILIKE '%facebook%';

--Further Study Query 3 --
SELECT * FROM analytics WHERE array_length(genres, 1) = 2;

--Further Study Query 4 --
SELECT * FROM analytics WHERE genres @> '{"Education"}';