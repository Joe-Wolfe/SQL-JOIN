-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id . 
SELECT *
FROM owners
LEFT JOIN vehicles
on owners.id = vehicles.owner_id;

-- Count the number of cars for each owner. Display the owners first_name , last_name and count of vehicles.
SELECT first_name, last_name, COUNT(*)
FROM owners
JOIN vehicles
on owners.id = vehicles.owner_id
GROUP BY first_name, last_name
ORDER BY first_name, last_name;

-- Count the number of cars for each owner and display the average price for each of the cars as integers. 
-- Display the owners first_name , last_name, average price and count of vehicles. 
SELECT first_name, last_name, ROUND(AVG(price)) AS avg, COUNT(*)
FROM owners
JOIN vehicles
on owners.id = vehicles.owner_id
GROUP BY first_name, last_name  HAVING COUNT(*) > 1 AND AVG(price)  > 10000 ORDER BY first_name DESC;