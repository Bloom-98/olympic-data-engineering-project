-- count the number of atheletes from each country
SELECT Country, COUNT(*) as TotalAthletes
FROM athletes 
GROUP by Country
ORDER BY TotalAthletes DESC;

select * from entriesgender

-- calculate the total medals won by each country
SELECT Team_Country, SUM(Gold) as Gold, SUM(Silver) as Silver,
SUM(Bronze) as Bronze
FROM medals
GROUP BY Team_Country

-- calculate the average number of entries by gender for each discipline

SELECT Discipline, (CAST(Female AS FLOAT)/CAST(Total AS FLOAT)) as AvgFemale, 
(CAST(Male AS FLOAT)/CAST(Total AS FLOAT)) as AvgMale
FROM entriesgender
