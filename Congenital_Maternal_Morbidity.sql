-- Frequency of Congenital Diseases based on Maternal Morbidity 
SELECT
 count(congenital.Congenital_Abnormality_Checked_Desc) Freq_of_Congenital_Diseases,
 morbidity.Maternal_Morbidity_Desc
FROM
 `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity` morbidity
INNER JOIN
 `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` congenital
ON
 ( morbidity.County_of_Residence = congenital.County_of_Residence )
GROUP BY
 morbidity.Maternal_Morbidity_Desc
ORDER BY
 morbidity.Maternal_Morbidity_Desc
