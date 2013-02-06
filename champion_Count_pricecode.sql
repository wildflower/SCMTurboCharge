/*  query to find listof pricecodes and count of records with those price codes */
 

select pricecode,fixedvariable,
count(pricecode) as number 
from scm.champion_eiep1
where reportmonth = '201112' 
and retailer = 'PUNZ'
group by pricecode 
order by number