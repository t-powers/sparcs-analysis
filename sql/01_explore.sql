select
    drg_description,
    facility_name,
    length_of_stay,
    severity_desc,
    total_charges
from discharges
where total_charges is not null
order by total_charges desc
limit 10;