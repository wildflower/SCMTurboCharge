SELECT 
    champion_registry.icp,    
    champion_eiep1.reportmonth,
    champion_eiep1.units,
    champion_eiep1.status,
    champion_eiep1.retailer,    
    champion_eiep1.pricecode,
    champion_eiep1.fixedvariable,
    champion_eiep1.pricerate,
    champion_eiep1.charge,
    champion_eiep1.chargeabledays,
    distpricecat,
    metercontact,
    champion_registry.retailer,     
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,
    icpstatus,
    metertypenhh,
    category      
    
    
FROM
    scm.champion_registry   inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where
    reportmonth > '201111' and (pricecode = 'WA02' or pricecode = 'WA03' or pricecode = 'WA05' or pricecode = 'WA01' or pricecode = 'WA06' or pricecode = 'WA001'
    or pricecode = 'WA07' or pricecode = 'WA001' or pricecode= '12' or pricecode = '13' or pricecode = 'WA0010') and distpricecat = 'N'  
   
   order by champion_registry.icp
  





 
 

 
 


  







 
 
 