-- Aim of the Project:
/* The primary objective of this project is to use data analysis to better understand  MovieOnRent's business operations by understanding
customer preferences and behaviors regarding movie rentals. 
By identifying the most frequently rented movie genres, popular actors, and customer age group preferences, 
MovieOnRent aims to optimize its movie inventory and enhance the overall customer experience.
 This includes targeted marketing, pricing strategies, and inventory management to ultimately improve business profitability 
 and customer satisfaction. Additionally, the project seeks to identify trends and promote family movies 
 to attract and cater to a wider audience, especially young families.*/

-- Data Understanding:
/*The tasks in this project make use of several columns from various tables in the database to gather valuable information. 
These columns include:
actor_id: A unique identifier for each actor.
first_name: The first name of the actor.
last_name: The last name of the actor.
film_id: A unique identifier for each movie.
title: The title of the movie.
rating: The movie's content rating (e.g., PG-13, R).
rental_rate: The cost of renting the movie.
category_id: A unique identifier for each category, representing the genre of the movie.
inventory_id: A unique identifier for each movie copy in the inventory.
rental_id: A unique identifier for each rental transaction.
rental_date: The date when the rental occurred.
These columns provide crucial data for understanding customer preferences, optimizing inventory, 
enhancing the customer experience, and making informed decisions about marketing, pricing, 
and movie selection in MovieOnRent's stores*/


-- Task 1(Display the full names of actors available in the database)
use sakila;
SELECT CONCAT(first_name, ' ', last_name) AS actor_name FROM actor;

/*The purpose of this task is to list the full names of actors that are present in the database. 
This information can be valuable for MovieOnRent's management to understand which actors have appeared in movies 
available for rental in their stores. It helps in cataloging and organizing the movie collection and can also be used for promotional purposes.

The SQL query provided uses the CONCAT function to combine the first_name and last_name columns from the actor table, 
creating a full name for each actor. The result of this query will be a list of actor names
 in the format "Actor_Name" ,'PENELOPE GUINESS'*/



-- Task 2(i)(Display the number of times each first name appears in the database)
SELECT first_name, COUNT(*) AS count FROM actor GROUP BY first_name ORDER BY count DESC;

/*This  task involves counting how many times each unique first name appears in the database. 
It can help identify common first names among actors, potentially for marketing. 
And, knowing which first names are frequent could be useful for creating promotional material.

The SQL query provided uses the COUNT function. The result of this query will be a list of count of unique actor first names
 in the format "First Name Count" ,'PENELOPE 4'*/



-- Task 2(ii)(What is the count of actors that have unique first names in the database? Display the first names of all these actors)
SELECT first_name FROM actor GROUP BY first_name HAVING COUNT(*) = 1;

/* The task goal is to find actors with unique first names and display those names. 
It's essential because MovieOnRent might want to highlight actors with distinctive names for branding or promotional purposes.
 Identifying actors with unique first names can also be valuable for avoiding confusion.
 
 The SQL query provided uses the GROUPBY AND ORDERBY function. The result of this query will be a list of unique actor first names
 in the format "First Name " ,'JENNIFER'*/



-- Task 3(i)(Display the number of times each last name appears in the database)
SELECT last_name, COUNT(*) AS count FROM actor GROUP BY last_name ORDER BY count DESC;

/*The task aims to count how often each unique last name appears among actors in the database. 
It can be useful for identifying common or popular last names among actors, which could be interesting for marketing or organizational purposes. 

The SQL query provided uses the COUNT,GROUPBY AND ORDERBY functions. The result of this query will be number of times each last name appears in the database
 in the format "Last Name, Count " ,'KILMER 5'*/



-- Task 3(ii)(Display all unique last names in the database)
SELECT last_name FROM actor GROUP BY last_name;
/*The purpose of this task is to display all the unique last names of actors in the database. This information can be valuable for MovieOnRent's management to understand the diversity of actors available in their movie collection.

The SQL query provided uses the GROUPBY function. The result of this query will be list of all unique last names in the database
 in the format "Last Name" ,'AKROYD'*/


-- Task 4(i)(Display the list of records for the movies with the rating "R")
SELECT * FROM film WHERE rating = 'R';
/*This part of the task involves retrieving a list of movies with an "R" rating. 
"R" rated movies often contain content that may not be suitable for children under 17 without parental guidance. 
This information helps MovieOnRent categorize movies for appropriate audiences.

The SQL query provided uses the WHERE Clause. The result of this query will be list of records for the movies with the rating "R"
 in the format Title and respective columns along with  "Rating" , 'R'*/



-- Task 4(ii)( Display the list of records for the movies that are not rated "R")
SELECT * FROM film WHERE rating != 'R';
/*In this section, the task is to list movies that are not rated "R." 
These movies may be suitable for a broader audience or even children, depending on their specific ratings. 
MovieOnRent can use this information for customer recommendations and categorization.

The SQL query provided uses the WHERE Clause. The result of this query will be list of records for the movies that are not rated "R"
 in the format Title and respective columns along with "Rating" ,'PG-13' , 'NC-17'*/



-- Task 4(iii)(Display the list of records for the movies that are suitable for the audience below 13 years of age)
SELECT * FROM film WHERE rating = 'G';
/*This part focuses on identifying movies with ratings suitable for children below 13 years of age.
 This information is vital for MovieOnRent to ensure they have a selection of family-friendly movies available for their younger audience.
 
 The SQL query provided uses the WHERE Clause. The result of this query will be list of records for the movies with the rating "R"
 in the format Title and respective columns along with  "Rating" , 'G' with movie title 'ACE GOLDFINGER'*/


-- Task 5(i)(Display the list of records for the movies where the replacement cost is up to $11)
SELECT * FROM film WHERE replacement_cost <= 11.00;
/*This part of the task involves listing movies with a replacement cost of up to $11. 
It helps MovieOnRent identify movies with lower replacement costs, which can affect their pricing and inventory management.

The SQL query provided uses the WHERE Clause. The result of this query will be list of records for the movies where the replacement cost is up to $11
 in the format Title and respective columns along with  "replacement cost" below 11 10.99,9.99 with movie title 'ALIEN CENTER'*/



-- Task 5(ii)(Display the list of records for the movies where the replacement cost is between $11 and $20)
SELECT * FROM film WHERE replacement_cost BETWEEN 11.00 AND 20.00;
/* In this section, the task is to list movies with replacement costs between $11 and $20. 
This information helps MovieOnRent categorize movies based on replacement cost and potentially influence rental pricing.

The SQL query provided uses the WHERE Clause. The result of this query will be list of records for the movies where the replacement cost is BETWEEN $11 TO $20
 in the format Title and respective columns along with  "replacement cost" between  11 to 20  17.99,18.99 with movie title 'ACE GOLDFINGER'*/


-- Task 5(iii)( Display the list of records for all movies in descending order of their replacement costs)
SELECT * FROM film ORDER BY replacement_cost DESC;
/*The objective is to provide a list of all movies in descending order of their replacement costs. 
This can help MovieOnRent make decisions related to pricing and inventory management.


The SQL query provided uses the WHERE Clause. The result of this query will be  list of records for all movies in descending order of their replacement costs
 in the format Title and respective columns along with  "replacement cost" between  30 to 9  27.99,9.99 with movie title 'ARABIA DOGMA'*/


-- Task 6(Display the names of the top 3 movies with the greatest number of actors)
SELECT film.title, COUNT(film_actor.actor_id) AS actor_count FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film.title
ORDER BY actor_count DESC
LIMIT 3;
/*This task aims to identify and display the names of the top 3 movies in MovieOnRent's collection that have the highest number of actors.
 The purpose is to showcase movies with a significant ensemble cast, 
 which can be appealing to customers who enjoy films with many well-known actors.
 
 The SQL query provided uses the LIMIT,GROUPBY AND ORDERBY functions. The result of this query will be the names of the top 3 movies with the greatest number of actors
 in the format "Title, Actor_Count " ,''LAMBS CINCINATTI 15','CHITTY LOCK 13','BOONDOCK BALLROOM 13'*/
 
 
 
-- Task 7(Display the titles of the movies starting with the letters 'K' and 'Q')
SELECT title FROM film WHERE title LIKE 'K%' OR title LIKE 'Q%';
/*This task involves listing the titles of movies that begin with the letters 'K' and 'Q'. 
It seems like a fun and exploratory task to identify movies with titles starting with specific letters. 
This information may be used for marketing or promotional purposes.

The SQL query provided uses the WHERE and LIKE clause. The result of this query will be the titles of the movies starting with the letters 'K' and 'Q'
 in the format "Title",'KANE EXORCIST'*/

-- Task 8(Display the names of all actors who appeared in the film 'Agent Truman')
SELECT actor.first_name, actor.last_name FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id
WHERE film.title = 'Agent Truman';
/*In response to the success of the film 'Agent Truman,' 
this task seeks to provide a list of all actors who appeared in this particular movie.
 It can help recognize and possibly feature the actors who contributed to the film's success.

The SQL query provided uses the INNER JOIN and WHERE clause. The result of this query will be the names of all actors who appeared in the film 'Agent Truman'
 in the format "First_name Last_name",'KIRSTEN PALTROW'*/

-- Task 9(Identify all the movies categorized as family films)
SELECT title, category.name AS category FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Family';
/*In response to sluggish sales among young families, MovieOnRent aims to promote family-friendly movies. 
This task involves identifying and listing all the movies categorized as family films. It's crucial for targeting marketing efforts and stocking inventory tailored to family audiences.

The SQL query provided uses the INNER JOIN and WHERE clause. The result of this query will be the movies categorized as family films
 in the format "Title Category",''AFRICAN EGG' 'FAMILY'*/



-- Task 10(i)(Display the maximum, minimum, and average rental rates of movies based on their ratings)
SELECT rating, MAX(rental_rate) AS max_rate, MIN(rental_rate) AS min_rate, AVG(rental_rate) AS avg_rate FROM film
GROUP BY rating
ORDER BY avg_rate DESC;
/*This part of the task calculates and displays statistics related to rental rates for movies, 
such as the maximum, minimum, and average rental rates. The output is sorted by movie ratings.
 This information can help in pricing strategies and understanding how different ratings impact rental rates.
  
  The SQL query provided uses the GROUP BY and ORDER BY. The result of this query will be the maximum, minimum, and average rental rates of movies based on their ratings
 in the format "Rating,"max_rate","min_rate","avg_rate",PG	4.99	0.99	3.051856,PG-13	4.99	0.99	3.034843,
 NC-17	4.99	0.99	2.970952
R	4.99	0.99	2.938718,
G	4.99	0.99	2.888876*/



-- Task 10(ii)(Display the movies in descending order of their rental frequencies)
SELECT film.title, COUNT(rental.rental_id) AS rental_frequency FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY film.title
ORDER BY rental_frequency DESC;
/* In this section, the objective is to provide a list of movies sorted in descending order based on their rental frequencies. 
This helps MovieOnRent identify the most popular movies in their collection, 
which can guide inventory management and customer recommendations.

The SQL query provided uses the COUNT,INNER JOIN GROUPBY AND ORDERBY functions. The result of this query will be the movies in descending order of their rental frequencies
 in the format "Title, Rental_frequency " ,''BUCKET BROTHERHOOD' '34'*/




-- Task 11(Identify film categories with a significant difference between replacement cost and rental rate)
SELECT film_category.category_id, category.name AS category_name,
AVG(film.replacement_cost) AS avg_replacement_cost,
AVG(film.rental_rate) AS avg_rental_rate
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
GROUP BY film_category.category_id, category.name
HAVING (AVG(film.replacement_cost) - AVG(film.rental_rate)) > 15;
/*This task focuses on identifying film categories where there is a substantial difference between
 the average film replacement cost and the average film rental rate. 
 It aims to understand pricing dynamics and profitability across different film categories.
 
 The SQL query provided uses the COUNT,INNER JOIN ,GROUPBY AND HAVING functions. The result of this query will be film categories with a significant difference between replacement cost and rental rate
 in the format "categoty_id', 'Category_name','avg_replacement_cost','avg_rental_rate' ,'16','Travel',''19.025088'' ''3.235614''*/
 
 
 

-- Task 12(Display film categories with more than 70 movies)
SELECT category.name AS category_name, COUNT(film_category.category_id) AS movie_count
FROM category
INNER JOIN film_category ON category.category_id = film_category.category_id
GROUP BY category_name
HAVING COUNT(film_category.category_id) > 70;
/*For this task, MovieOnRent wants to identify film categories with a substantial number of movies, specifically those exceeding 70 movies. 
This information is valuable for inventory management and marketing decisions, 
as it helps pinpoint categories with a significant presence in the collection.

The SQL query provided uses the COUNT,INNER JOIN ,GROUPBY AND HAVING functions. The result of this query will be film categories with a significant difference between replacement cost and rental rate
 in the format 'Category_name','Movie_count','Foreign 73','Sports 74'*/

/*These interpretations provide a clear understanding of each task's purpose and how it contributes to MovieOnRent's data analysis and business objectives.*/
