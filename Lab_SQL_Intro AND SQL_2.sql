/* Show tables in the database. */

show tables;

/* Explore tables. (select everything from each table) */

select * from actor  ; 
select * from actor_info  ; 
select * from address  ; 
select * from category  ; 
select * from city  ; 
select * from country  ; 
select * from customer  ; 
select * from customer_list  ; 
select * from film  ; 
select * from film_list  ; 
select * from film_text  ; 
select * from inventory ; 
select * from `language`  ; 
select * from nicer_but_slower_film_list  ; 
select * from payment  ; 
select * from rental  ; 
select * from sales_by_film_category  ; 
select * from sales_by_film_category  ; 
select * from sales_by_store ; 
select * from staff ; 
select * from staff_list ; 
select * from store ; 

/* Select one column from a table. Get film titles. */

select distinct film.title from film ;

/* Select one column from a table and alias it. Get languages. */

select language.name as languages  from `language`;

/* How many stores does the company have? How many employees? which are their names? */

select count(store_id) as Number_of_store from store;
select count(staff_id) as Number_of_employees from staff;
select distinct first_name from staff ;


/* Select all the actors with the first name ‘Scarlett’.  */
select * from actor where first_name='SCARLETT'

/* Select all the actors with the last name ‘Johansson’.*/
select * from actor where last_name='JOHANSSON'

/* How many films (movies) are available for rent? */
select count(film_id) from film ;

/* How many films have been rented? */
select count(distinct inventory_id) from rental;

/* What is the shortest and longest rental period? */
select min(rental_duration) from film ; 
select max(rental_duration) from film ; 

/*  What are the shortest and longest movie duration? Name the values max_duration and min_duration. */
select min(length) as min_duration from film ; 
select max(length) as max_duration from film ; 

/* What's the average movie duration? */
select avg(length) as avg_duration from film ; 

/* What's the average movie duration expressed in format (hours, minutes)?*/
select avg(length)/60 as avg_duration_hours from film;

/*  How many movies longer than 3 hours? */
select count(title) as movie_longer_3h from film where length>180;

/* Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org. */
select concat(first_name, ' ', last_name, ' - ', email) as formatted from customer ; 

/* What's the length of the longest film title? */
select max(length(title)) from film; /* = 27 */
select length, title from film where length(title)=27;


