/*  query to find listof pricecodes and count of records with those price codes */
 

select pricecode,fixedvariable,retailer, reportmonth,
 
count(pricecode) as count from scm.champion_eiep1  where reportmonth = '201202' group by pricecode order by count
 