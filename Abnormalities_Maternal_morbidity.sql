-- Frequency of Abnormalities Checked on the basis of Maternal Morbidity 
SELECT
 count(abnormality.Abnormal_Conditions_Checked_Desc) Freq_of_Abnormalities_Checked,
 morbidity.Maternal_Morbidity_Desc
FROM
 `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_maternal_morbidity` morbidity
INNER JOIN
 `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_abnormal_conditions` abnormality
ON
 ( morbidity.County_of_Residence = abnormality.County_of_Residence )
GROUP BY
 morbidity.Maternal_Morbidity_Desc
ORDER BY
 morbidity.Maternal_Morbidity_Desc
