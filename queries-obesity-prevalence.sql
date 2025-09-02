--Prevalence of obesity
SELECT ObesityCategory,COUNT (*) AS Total,100*COUNT(*)/(SELECT COUNT(*) FROM obesity_data.obesity) AS Percentage
FROM obesity_data.obesity 
GROUP BY ObesityCategory;

--Average age with obese
SELECT AVG(Age) AS Average_Age
FROM obesity_data.obesity
WHERE ObesityCategory='Obese';

--Obesity prevalence by age groups
SELECT
CASE
WHEN Age<30 THEN 'Youth'
WHEN Age >=50 THEN 'Old'
ELSE 'Middle-Aged'
END AS AgeGroup,100*SUM(CASE WHEN ObesityCategory = 'Obese' THEN 1 ELSE 0 END)/(SELECT COUNT(*) FROM obesity_data.obesity WHERE ObesityCategory='Obese') AS ObesityRate
FROM obesity_data.obesity
GROUP BY AgeGroup;

--Obesity prevalence by gender
WITH Gender_Stats AS (
    SELECT Gender,
           SUM(CASE WHEN ObesityCategory = 'Obese' THEN 1 ELSE 0 END) AS Obese_Count,COUNT(*) AS Total_Count,
    FROM obesity_data.obesity
    GROUP BY Gender
)
SELECT Gender,
       Total_Count,
       Obese_Count,
       100.0 * Obese_Count /(SELECT COUNT(*) FROM obesity_data.obesity WHERE ObesityCategory='Obese') AS Obesity_Rate
FROM Gender_Stats;

--Obesity prevalence by physical activity level
SELECT PhysicalActivityLevel, SUM(CASE WHEN ObesityCategory = 'Obese' THEN 1 ELSE 0 END) AS Obese,
  100.0 * SUM(CASE WHEN ObesityCategory = 'Obese' THEN 1 ELSE 0 END) / COUNT(*) AS Obesity_rate
FROM obesity_data.obesity
GROUP BY PhysicalActivityLevel;

--Weight distribution on physical activity level
SELECT PhysicalActivityLevel,ObesityCategory,100*COUNT(ObesityCategory)/(SELECT COUNT (*) FROM obesity_data.obesity) AS Percentage
FROM obesity_data.obesity
GROUP BY PhysicalActivityLevel,ObesityCategory 
ORDER BY PhysicalActivityLevel,Percentage;

--Top 10 individuals with highest BMI 
SELECT *
FROM obesity_data.obesity
ORDER BY BMI DESC
LIMIT 10;