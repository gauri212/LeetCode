
# Write your MySQL query statement below
SELECT name, bonus
FROM Bonus
RIGHT JOIN Employee
ON Employee.empId = Bonus.empId 
WHERE bonus<1000 OR bonus IS NULL;