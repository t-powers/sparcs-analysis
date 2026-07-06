SELECT "Length of Stay"
FROM raw_discharges
LIMIT 10;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'raw_discharges'
  AND column_name IN ('Length of Stay', 'Total Charges', 'Total Costs', 'Discharge Year');