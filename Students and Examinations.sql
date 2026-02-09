select St.student_id , St.student_name , Sub.subject_name, count(Ex.student_id) as attended_exams
from Students St
cross join Subjects Sub 
Left Join Examinations Ex
on St.student_id = Ex.student_id
   and Sub.subject_name = Ex.subject_name
group by St.student_id,
        St.student_name,
        Sub.subject_name 
order by St.student_id,
         Sub.subject_name;
