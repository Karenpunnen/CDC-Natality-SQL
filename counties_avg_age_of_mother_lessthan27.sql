
--Which are the counties in the US where the average age of mothers is less than 27?
SELECT County_of_Residence,Ave_Age_of_Mother 
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality` 
WHERE Ave_Age_of_Mother < 27
