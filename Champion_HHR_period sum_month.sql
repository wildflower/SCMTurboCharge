select 
champion_eiep3.icp,readdate,period,kwh,champion_eiep3.retailer,champion_registry.retailer as 'current-retailer',    addressuserref, 
addressnumber,    addressstreet,    addresstown,    icpstatus,    icpstatusreason,     metertypenhh,    distpricecat,    category

from  
 champion_registry
        inner join
    champion_eiep3 ON champion_registry.icp = champion_eiep3.icp
where 
champion_eiep3.icp = '0000400221WA822'

 and  champion_eiep3.reportmonth = '201112'
  
  order by champion_eiep3.icp
 

 

