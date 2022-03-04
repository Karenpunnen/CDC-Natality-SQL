--Which counties in the US have babies weighing below the average at birth?
SELECT County_of_Residence,Ave_Birth_Weight_gms 
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality` 
WHERE Ave_Birth_Weight_gms < (SELECT AVG(Ave_Birth_Weight_gms) FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`)
