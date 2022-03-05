-- The number of babies suffering from both congenital and abnormal conditions
SELECT 
  congenital.Congenital_Abnormality_Checked_Desc,
  COUNT(abnormalities.Abnormal_Conditions_Checked_Desc) Frequency_of_Abnormal_Conditions_Checked
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_congenital_abnormalities` congenital
INNER JOIN
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_abnormal_conditions` abnormalities
ON
  (congenital.County_of_Residence = abnormalities.County_of_Residence )
WHERE 
  (congenital.Congenital_Abnormality_Checked_YN = 0 AND abnormalities.Abnormal_Conditions_Checked_YN = 0)
GROUP BY
  congenital.Congenital_Abnormality_Checked_Desc
ORDER BY
  congenital.Congenital_Abnormality_Checked_Desc
