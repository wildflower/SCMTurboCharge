SELECT 
    champion_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,
    icpstatus,
    category,
    champion_eiep1.reportmonth,
    champion_eiep1.units,
    champion_eiep1.status,
    champion_eiep1.retailer,
    metercontact,
    distpricecat,
    champion_eiep1.pricecode,
    champion_eiep1.pricerate,
    champion_eiep1.charge
FROM
    scm.champion_registry
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where
    reportmonth > '201108' and (pricecode = 'WA02' or pricecode = 'WA03' or pricecode = 'WA05' or pricecode = 'WA01' or pricecode = 'WA06' 
    or pricecode = 'WA07') and distpricecat = 'N'
  
   
   
  





 
 

 
 


  







 
 
 