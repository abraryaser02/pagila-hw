/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

select payment.customer_id, first_name, last_name, SUM (amount) from payment join customer on payment.customer_id = customer.customer_id group by payment.customer_id, first_name, last_name order by last_name;
