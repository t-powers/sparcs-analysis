select med_surg, count(*)
from discharges
where med_surg is not null
  and med_surg <> 'Not Applicable'
group by med_surg