//EJERCICIO 1

SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;


//EJERCICIO 2
SELECT last_name,departmet_id, department_date
FROM locations
JOIN countries;
