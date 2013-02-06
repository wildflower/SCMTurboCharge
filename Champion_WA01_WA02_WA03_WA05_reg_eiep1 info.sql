SELECT 
    champion_registry.icp,    addressuserref,    addressnumber,    addressstreet,    addresstown,  
    icpstatus,    category, champion_eiep1.startdate,champion_eiep1.enddate,   champion_eiep1.reportmonth,  AMI, meterregister,  champion_eiep1.units, 
    champion_eiep1.pricecode,    champion_eiep1.status,    champion_eiep1.retailer, metercontact, distpricecat,  champion_eiep1.pricerate,
    champion_eiep1.charge   
FROM
    scm.champion_registry inner join champion_eiep1 on champion_registry.icp = champion_eiep1.icp
where    
  reportmonth > '201202' and 
  (pricecode = 'WA02' or pricecode = 'WA03' or pricecode = 'WA05' or pricecode = 'WA01') 
  
   
   
  





 
 

 
 


  







 
 
 