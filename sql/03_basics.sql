-- top surgical DRGs by volume
SELECT drg_description,
       COUNT(*)                      AS cases,
       ROUND(AVG(length_of_stay), 1) AS avg_los,
       ROUND(AVG(total_costs), 0)    AS avg_cost
FROM discharges
WHERE med_surg = 'Surgical'
GROUP BY drg_description
ORDER BY cases DESC
LIMIT 15;