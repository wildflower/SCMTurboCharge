SELECT 
    sunrise_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,     
    icpstatus,
    category,
    metertypehhr,
    ami,
    meterregister,
    distpricecat,
    reference,
    chargeablecapacity,
    retailer,
    metercontact
     
   
FROM    scm.sunrise_registry
  
where  
  (distpricecat = 'NMDR'
 or distpricecat = 'NMDU')
 
  
    
order by icp 

  

 
 
 
  
    







 
 
 