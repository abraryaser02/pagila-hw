/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

select film.film_id, title, count(inventory_id) from inventory join film on inventory.film_id = film.film_id WHERE title ILIKE 'H%' GROUP BY film.film_id ORDER BY title DESC;
