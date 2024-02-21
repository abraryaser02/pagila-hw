/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

select film.film_id, film.title, film.language_id, name from film join language on language.language_id = film.language_id where film.title ILIKE 'q%' or film.title ILIKE 'k%' ORDER BY film.title;
