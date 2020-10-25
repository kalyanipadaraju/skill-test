# Write a query to get a list of Employee who have a First Middle Or last name as Ram, and not any thing else
USE dbo;
SELECT Name FROM dbo.tblemployees WHERE (Name LIKE 'RAM%') or (Name LIKE '%RAM') ;

#Write a Query to get all employees where reminder of employee number by 10 is a power of two
SELECT Name, (EmployeeNumber%10) as output
 FROM dbo.tblemployees
 where ((EmployeeNumber%10)%2) = 0 ;
 
# Write a query to get all employees sorted by Service Type and Name within a given Center
SELECT Name from dbo.tblemployees
group by CentreCode
order by Name,ServiceType DESC;

#Write a query to find the name(s) having the largest number of characters in it. (Hint: Use aggregate functions)
SELECT Name, char_length(Name) as length 
FROM dbo.tblemployees
order by length desc ;

# Write a query to list all the employees whose name starts and ends with same character.
SELECT Name 
FROM dbo.tblemployees 
WHERE LEFT(Name, 1) = RIGHT(Name, 1);

#Write a query to get Max salary and Min salary of all the employees.
SELECT max(NetPay) as Highest_salary, 
min(NetPay) as least_salary 
FROM  dbo.tblpayemployees;

/*Write a query to get all the employees who are ranked between 8 and 15 based on the present --basic paid to them
Use ROW_NUMBER function
Without using any pre-defined function */
SELECT distinct Name, PresentBasic
from dbo.tblemployees 
order by PresentBasic desc
limit 7,8;
