select class
from courses
group by class
having count(student) >=5;


SELECT class
FROM courses
GROUP BY class
HAVING COUNT(*) >= 5;
