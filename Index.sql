/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM Employee;
SELECT TOP 10 * FROM Employee;
SELECT * FROM Employee WHERE id = 5;
SELECT * FROM Employee WHERE name = 'ABC 19952';
SELECT id, name FROM Employee WHERE name = 'ABC 19952';
SELECT * FROM Employee WHERE name = 'ABC 19522' AND email = 'abc19522@mindaugascorp.com';
SELECT * FROM Employee WHERE email = 'abc19522@mindaugascorp.com';
SELECT * FROM Employee WHERE name = 'ABC 19522' OR email = 'abc911111@mindaugascorp.com';
SELECT * FROM Employee WHERE email = 'abc911111@mindaugascorp.com' OR name = 'ABC 19522';
SELECT * FROM Employee WHERE name = 'ABC 19522' AND email = 'abc91111@mindaugascorp.com';
SELECT * FROM Employee ORDER BY email DESC;