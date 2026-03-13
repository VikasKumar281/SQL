select p.project_id, 
round(sum(e.experience_years)/sum(e.employee_id)) as average_years
from project p
left join employee e
on p.employee_id = e.employee_id
group by project_id;
