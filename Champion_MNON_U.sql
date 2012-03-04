SELECT 
    champion_registry.icp,    champion_eiep1.reportmonth,    champion_eiep1.units,    champion_eiep1.status,    champion_eiep1.retailer,    metercontact,
    champion_eiep1.pricecode,    champion_eiep1.pricerate,    champion_eiep1.charge,    addressuserref,    addressnumber,    addressstreet,
    addresstown,    icpstatus,    metertypenhh,    distpricecat,    category
FROM     scm.champion_registry
inner join     champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where metercontact = 'MNON'
AND STATUS = 'UB'
AND REPORTMONTH = '201112'     
order by champion_registry.icp desc
  
   
  





 
 

 
 


  







 
 
 