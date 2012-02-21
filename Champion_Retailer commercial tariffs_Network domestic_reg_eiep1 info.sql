SELECT 
    champion_registry.icp,    addressuserref,    addressnumber,    addressstreet,    addresstown,  
    icpstatus,    category,    champion_eiep1.reportmonth,    champion_eiep1.units,    
    champion_eiep1.status,    champion_eiep1.retailer, metercontact, distpricecat,  champion_eiep1.pricecode,    champion_eiep1.pricerate,
    champion_eiep1.charge   
FROM
    scm.champion_registry inner join champion_eiep1 on champion_registry.icp = champion_eiep1.icp
where   
distpricecat= 'D' and 
(pricecode = 'WA22' or pricecode = 'WA23' or pricecode = 'WA25' or pricecode = 'WA26' or pricecode = 'WA27' or pricecode = 'WA32' or pricecode = 'N' or pricecode = 'NON DOM') 
 and reportmonth > '201111'
  
   


     
   
  





 
 

 
 


  







 
 
 