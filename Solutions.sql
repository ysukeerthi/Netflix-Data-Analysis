-- 15 Business Problems & Solutions

1. Count the number of Movies vs TV Shows
	
	SELECT type , count(*)
	FROM netflix
	GROUP BY type;
	
2. Find the most common rating for movies and TV shows

	SELECT type,rating
	
	FROM
	(SELECT type,rating,COUNT(*),
	RANK() OVER(PARTITION BY TYPE ORDER BY COUNT(*)DESC)AS ranking
	FROM netflix
	GROUP BY 1,2
	ORDER BY 1,3 desc)
	
	WHERE ranking =1;

3. List all movies released in a specific year (e.g., 2020)

	SELECT * FROM netflix
	WHERE type='Movie'
	AND
	release_year = 2020;

4. Find the top 5 countries with the most content on Netflix

	SELECT
	UNNEST(STRING_TO_ARRAY(country,',')) as new_country,COUNT(*)
	FROM netflix
	GROUP BY 1
	ORDER BY 2 DESC
	LIMIT 5;
	
5. Identify the longest movie

	SELECT *
	FROM netflix
	WHERE type = 'Movie'
	  AND CAST(SPLIT_PART(duration, ' ', 1) AS INTEGER) = (
      SELECT MAX(CAST(SPLIT_PART(duration, ' ', 1) AS INTEGER))
      FROM netflix
      WHERE type = 'Movie'
  	);

6. Find content added in the last 5 years

	SELECT *
	FROM netflix
	WHERE
	TO_DATE(date_added , 'Month DD,YYYY') >= CURRENT_DATE - INTERVAL '5years' ;
	
7. Find all the movies/TV shows by director 'Rajiv Chilaka'!

	SELECT * 
	FROM netflix 
	WHERE director ILIKE '%Rajiv Chilaka%';

8. List all TV shows with more than 5 seasons

	SELECT *
	FROM netflix
	WHERE type ='TV Show' 
	AND
	SPLIT_PART(duration, ' ', 1)::numeric > 5;

	
9. Count the number of content items in each genre

	SELECT UNNEST(STRING_TO_ARRAY(listed_in,',')) as genre,count(*) AS total_content
	FROM netflix
	GROUP BY 1;
	
10.Find each year and the average numbers of content release in India on netflix.	
return top 5 year with highest avg content release!

	SELECT EXTRACT(YEAR FROM TO_DATE(date_added,'Month DD,YYYY')),COUNT(*) as yearly_content,
	COUNT(*)/(SELECT COUNT(*) FROM netflix WHERE country='India')::numeric *100 as avg_content
	FROM netflix
	WHERE country='India'
	GROUP BY 1
	;

11. List all movies that are documentaries

	SELECT * 
	FROM netflix
	WHERE listed_in ILIKE '%Documentaries';

12. Find all content without a director

	SELECT * 
	FROM netflix
	WHERE director IS NULL;	

13. Find how many movies actor 'Salman Khan' appeared in last 10 years!

	SELECT COUNT(*) AS movies_in_10_years
	FROM netflix 
	WHERE casts ILIKE '%Salman Khan%'
    AND TO_DATE(TRIM(date_added), 'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '10 years'
    AND type = 'Movie';

14. Find the top 10 actors who have appeared in the highest number of movies produced in India.

	SELECT UNNEST(STRING_TO_ARRAY(casts,',')) as actors , count(*) as number_of_movies
	FROM netflix
	WHERE country ILIKE '%India%'
	GROUP BY 1
	ORDER BY 2 DESC
	LIMIT 10
	;
15.
Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
the description field. Label content containing these keywords as 'Bad' and all other 
content as 'Good'. Count how many items fall into each category.

	SELECT 
    CASE 
        WHEN description ILIKE '%kill%' OR description ILIKE '%violence%' THEN 'Bad'
        ELSE 'Good'
    END AS classification,
    COUNT(*) AS classify_count
FROM netflix
GROUP BY classification;






--




