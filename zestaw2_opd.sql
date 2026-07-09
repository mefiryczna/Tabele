strimport streamlit as st
-- Wyświetl wszystkie stanowiska pracy, w których nazwa zaczyna się od m
SELECT * FROM employees
WHERE first_name LIKE "m%";

-- Wyświetl wszystkie stanowiska pracy, w których nazwa zaczyna się od HR
SELECT * FROM employees
WHERE first_name like "HR%";

-- Wyświetl wszystkie stanowiska pracy, gdzie w nazwie znajduje się wyraz
-- Software na początku, w środku lub na końcu nazwy stanowiska pracy.
SELECT * FROM employees
WHERE first_name LIKE "software%";

-- Wyświetl ile wynosi średnia płaca minimalna dla stanowisk pracy, których
-- nazwa zaczyna się od Sales. Zmień nazwę kolumny na
-- average_min_salary_sales
SELECT * FROM jobs
ORDER BY min_salary ASC, max_salary ASC;

SELECT * FROM sales
WHERE first_name LIKE "sales%";

UPDATE sales 
SET sales = "averagey_min_salary_sales";

--  Wyświetl wszystkie stanowiska pracy, gdzie w nazwie druga litera to u.
SELECT * FROM jobs
WHERE first_name LIKE "u%";

--  Wyświetl wszystkich pracowników z imieniem zaczynającym się na A i 
-- posiadającym przynajmniej pięć znaków.
SELECT * FROM employees
WHERE first_name LIKE "A%" and count(5);

--  Wyświetl wszystkich pracowników z imieniem zaczynającym się na E i
-- kończącym się na a.
SELECT * FROM employees
WHERE first_name LIKE "E%a";

-- Wyświetl wszystkich pracowników z adresem email innym niż gmail.com.
-- Rekordy sortuj alfabetycznie po kolumnie

SELECT * FROM Employess
WHERE name_email NOT LIKE "gmail.com"
ORDER BY last_name ASC;

-- Wyświetl wszystkich pracowników z imieniem Adam, Alice oraz Tom.
SELECT * FROM Employees
WHERE first_name LIKE "Adam, Alice, Tom";

-- Wyświetl wszystkich pracowników, którzy nie są zatrudnieni w dziale o numerze
-- id 2, 3, oraz 5.
SELECT * FROM Employees
WHERE department_id NOT LIKE "2, 3, 5";

--  Wyświetl wszystkie stanowiska pracy, gdzie płaca minimalna jest poza
-- przedziałem od 3000 do 8000.
SELECT jobs
FROM employees
WHERE min_salary < 3000 and max_salary > 8000; 

-- Wyświetl wszystkich pracowników, którzy zostali zatrudnieni w 2015 oraz 2016
-- roku, a także nie pracują w dziale o numerze id 2 oraz 3.
SELECT Empolyees
WHERE hire_date BETWEEN "1990-01-01" AND "2016-12-31"
ORDER BY birth_date ASC;

--  Wyświetl wszystkich pracowników, którzy urodzili się w 1990 roku oraz sortuj
-- rekordy od najstarszego pracownika.
SELECT Employees
WHERE bitrh_date LIKE "1990-01-01"
ORDER BY birth_date DESC;

-- yświetl imię, nazwisko oraz datę urodzenia pracowników zatrudnionych na
-- stanowisku pracy o numerze id 3. Informacje wyświetl w jednej kolumnie w
-- formacie <imię> <nazwisko> - <data_urodzenia> i nadaj jej nazwę employee.
SELECT CONCAT(first_name, ' ', last_name, ' - ', birth_date) AS employee 
FROM employees 
WHERE job_id = 3;

-- Wyświetl imię oraz nazwisko wszystkich pracowników a także nazwę działu, w
-- którym pracują.
SELECT CONCAT(first_name, ' ', last_name, ' - ', department_id)
FROM employees;

-- Wyświetl nazwę wszystkich miast oraz nazwę działów firmy, które znajdują się
-- w danym mieście. Gdy miasto nie posiada żadnego działu umieść wartość NULL.
-- Rekordy sortuj alfabetycznie po kolumnie miasto.
-- ZAPISZ plik jako zestaw2_odpowiedzi i umieść go w repozytorium w serwisie

SELECT CONCAT(name_city, name_department, id)
WHERE Cities NOT LIKE name_department ="NULL"
GROUP BY city_name
ORDER BY city_name ASC;

SELECT c.city_name AS city,
       GROUP_CONCAT(d.department_name ORDER BY d.department_name SEPARATOR ', ') AS department
FROM cities c
LEFT JOIN departments d ON c.city_id = d.city_id
GROUP BY c.city_name
ORDER BY c.city_name ASC;





