/*  query to find listof pricecodes and count of records with those price codes */
 

select pricecode,fixedvariable,
count(pricecode)
as count from scm.sunrise_eiep1
where reportmonth = '201112' 
and retailer = 'PUNZ'
group by pricecode order by count