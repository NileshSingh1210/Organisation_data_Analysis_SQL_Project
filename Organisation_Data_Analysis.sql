create database hackersprint_class;

use hackersprint_class;

SET SQL_SAFE_UPDATES =0 ;
-- import the dataset

SELECT 
    *
    
FROM
    organization;

SELECT 
    *
FROM
    offices;


-- Find organizations founded before the year 2000.
SELECT 
    *
FROM
    organization
WHERE
    Founded < 2000;

SELECT 
    `Number of employees`
FROM
    organization;

-- Retrieve the names and websites of organizations in the "Online Publishing" industry.

SELECT 
    name AS Name_of_org, website
FROM
    organization
WHERE
    industry = 'online Publishing';



 

-- Calculate the average number of employees for organizations founded in each decade.    -- dd




describe organization;

SELECT 
    (founded - MOD(founded, 10)) AS decade,
    AVG(`number of employees`) AS average_employees
FROM
    organization
GROUP BY decade;

SELECT 
    SUM(`Number of employees`)
FROM
    organization;

SELECT 
    *
FROM
    organization;
;

-- Identify organizations with a description containing the term "virtual."



SELECT 
    *
FROM
    organization
WHERE
    Description LIKE '%virtual%';

SELECT organization;

-- Update the country for the organization with OrganizationId equal to 'E84A904909dF528' to 'Morocco.'     --dd

UPDATE organization 
SET 
    Country = 'Morocco'
WHERE
    `Organization Id` = 'E84A904909dF528';-- use of `   `



DELETE FROM organization 
WHERE
    Founded < 1990;



-- Calculate the total number of employees for each industry.
select name, industremployeesy, sum(number of employees) from organization
group by industry;

SELECT 
    Industry, SUM('Number of employees') AS TotalEmployees
FROM
    organization
GROUP BY Industry;

-- Find the country with the highest average number of employees.
SELECT 
    Country, AVG(`Number of employees`) AS AvgEmployees
FROM
    organization
GROUP BY Country
ORDER BY AvgEmployees DESC
LIMIT 1;



-- Discuss which columns in the organizations table should be indexed and why.   -- dd

CREATE VIEW OrganizationNamesAndDescriptions AS
    SELECT 
        Name, Description
    FROM
        organization;


