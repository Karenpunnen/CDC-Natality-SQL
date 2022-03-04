--How many counties where at least one abnormality has been checked?
SELECT COUNT(Abnormal_Conditions_Checked_YN)
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_abnormal_conditions`
WHERE Abnormal_Conditions_Checked_YN =0
