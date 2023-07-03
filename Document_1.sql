-- Question 1
select * from actor;

-- Question 1 continued
select first_name, last_name
from actor 
where last_name = 'Wahlberg';

-- Question 2
select * from payment;

-- Question 2 continued
select COUNT(customer_id), amount
from payment 
where amount between 3.99 and 5.99
group by amount;

-- Question 3 
select * from inventory;

-- Question 3 continued
select film_id, COUNT(inventory_id)
from inventory
group by film_id
order by COUNT desc;

-- Question 4
select * from customer;

-- Question 4 continued
select first_name, last_name
from customer 
where last_name = 'William';


-- Question 5
select * from rental;

-- Quesiton 5 continued
select staff_id, COUNT(inventory_id)
from rental 
group by stafF_id;

-- Question 6
select COUNT(distinct district)
from address;

-- Question 7
select * from film_actor;

-- Question 7 continued
select COUNT(actor_id), film_id
from film_actor 
group by film_id
order by COUNT(actor_id) desc;

-- Quesstion 8
select * from customer;

-- Question 8 continued 
select store_id, first_name, last_name
from customer
where store_id = 1 and last_name like '%es';

-- Question 9 
select * from payment;

-- Question 9 continued 
select amount, COUNT(rental_id), customer_id
from payment 
where rental_id > 250 and customer_id between 380 and 430
group by amount, customer_id
order by count desc;

-- Question 10
select * from film;

-- Question 10 continued
select rating, COUNT(rating)
from film
group by rating
order by count desc;

