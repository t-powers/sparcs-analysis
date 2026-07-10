-- Elective TKA (drg 326), age group 50 to 69, facilities los is 4 or more.
-- Core population reviewed, facility case min 30.
select
    facility_name,
    age_group,
    drg_description,
    count(*)                      as case_count,
    round(avg(length_of_stay), 1) as avg_length_of_stay
from discharges
where drg_code = '326'
  and age_group in ('50 to 69')
group by facility_name,
         age_group,
         drg_description
having count(*) >= 30
   and avg(length_of_stay) >= 4
order by avg_length_of_stay desc;