--What is the average Number of Prenatal visits given that the baby suffers from a congenital disease?
SELECT AVG(Ave_Number_of_Prenatal_Wks)
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities`
WHERE Congenital_Abnormality_Checked_YN = 0
