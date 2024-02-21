/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT
 first_name, last_name, sum (amount) 
FROM
 staff 
JOIN
 payment ON staff.staff_id = payment.staff_id
WHERE payment_date >= '2020-01-01 00:00:00+00' AND payment_date < '2020-02-01 00:00:00+00'
GROUP BY
 first_name, last_name;
