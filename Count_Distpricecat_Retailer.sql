/*  query to find listof pricecodes and count of records with those price codes */
 

select distpricecat,fixedvariable,
count(distpricecat)
as count from champion_eiep1
    inner join champion_registry on  champion_registry.icp = champion_eiep1.icp
where reportmonth = '201112' 
and champion_eiep1.retailer = 'PUNZ'

group by distpricecat order by count 