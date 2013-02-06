SELECT 
    champion_registry.icp,    
    champion_eiep1.reportmonth,
    meterregister,
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
    scm.champion_registry inner join champion_eiep1 on champion_registry.icp = champion_eiep1.icp
where  
reportmonth > '201112'
and (pricecode = 'WA22' or pricecode = 'WA23' or pricecode = 'WA25' or pricecode = 'WA26' or pricecode = 'WA27' or pricecode = 'WA32' or pricecode = 'N' or pricecode = 'NON DOM') 
and distpricecat= 'D'
order by  champion_registry.icp
  
   


     
   
  





 
 

 
 


  







 
 
 