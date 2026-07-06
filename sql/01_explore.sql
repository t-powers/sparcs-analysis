SELECT facility_name,
       COUNT(*) AS discharges
FROM discharges
GROUP BY facility_name
ORDER BY discharges DESC
LIMIT 15;