--Which county has the highest number of births?
SELECT County_of_Residence, Births
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
ORDER BY Births DESC
LIMIT 1
