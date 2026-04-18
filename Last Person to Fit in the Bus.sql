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
