# Write your MySQL query statement below
SELECT Person.firstname, person.lastname, Address.city, Address.state
FROM Person
Left join Address
on Person.personId=Address.personId