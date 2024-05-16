SELECT *
FROM employee
WHERE employee_Add LIKE '%台南市東區%';


SELECT 
    '台南市' AS city,
    SUBSTRING_INDEX(employee_Add, '市', 1) AS zone,
    SUBSTRING_INDEX(employee_Add, '市', -1) AS address
FROM employee
WHERE employee_Add LIKE '%台南市%';
