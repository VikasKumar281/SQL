select q1.person_name
from queue q1
inner join queue q2
on q1.turn >= q2.turn
group by q1.turn
having sum(q2.weight) <= 1000
order by q1.turn desc
limit 1; 






With temp As(
    select 
        person_name,
        turn,
        sum(weight) over (order by turn) as total_weight
    from Queue    
)
select person_name
from temp
where total_weight <= 1000
order by total_weight desc
Limit 1;
