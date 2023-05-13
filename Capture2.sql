--capture2  

select p.date, pm.name as payment_method, sum(p.amount) as total_payments
from payments p
join payment_methods pm
on p.payment_method = pm.payment_method_id
group by payment_method, date
order by p.date;
