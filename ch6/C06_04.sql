SELECT *
FROM employee
WHERE employee_Add LIKE '%�x�n���F��%';


SELECT 
    '�x�n��' AS city,
    SUBSTRING_INDEX(employee_Add, '��', 1) AS zone,
    SUBSTRING_INDEX(employee_Add, '��', -1) AS address
FROM employee
WHERE employee_Add LIKE '%�x�n��%';
