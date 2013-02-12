/*  query to find listof pricecodes and count of records with those price codes */
 

select pricecode,fixedvariable,
count(pricecode)
as count 
from  champion_eiep1
where reportmonth = '201204' 
 
group by pricecode order by count