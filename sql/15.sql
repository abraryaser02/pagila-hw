/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

select category.name, count(category.name) as sum from language join film on film.language_id = language.language_id join film_category on film.film_id = film_category.film_id join category on film_category.category_id = category.category_id group by category.name order by category.name;
