--List of counties where pre preganancy BMI is high and at least one abnormality is checked in babies. 
SELECT County_of_Residence,Abnormal_Conditions_Checked_Desc,Abnormal_Conditions_Checked_YN,Births,Ave_Pre_pregnancy_BMI  
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality_by_abnormal_conditions` 
WHERE Ave_Pre_pregnancy_BMI > 30 AND Abnormal_Conditions_Checked_YN = 0
