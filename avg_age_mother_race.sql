--What is the average age of mothers of different races in the US?
SELECT Mothers_Single_Race, AVG(Ave_Age_of_Mother) as Average_Age_of_Mother 
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_mother_race`
GROUP BY Mothers_Single_Race
