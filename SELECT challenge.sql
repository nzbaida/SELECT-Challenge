SELECT * FROM movies_basic;
SELECT title AS `Title:`, IF(release_year < 2000, '20th Century', '21st Century') AS `Released:`, director AS `Director:`,
CASE
	WHEN critic_rating <= 5 THEN 'Bad'
    WHEN critic_rating > 5 AND critic_rating <= 7 THEN 'Decent'
    WHEN critic_rating > 7 AND critic_rating < 9 THEN 'Good'
    ELSE 'Amazing'
END AS `Reviews:` 
FROM movies_basic
ORDER BY title DESC;