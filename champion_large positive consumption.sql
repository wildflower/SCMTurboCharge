SELECT 
    champion_registry.icp, champion_eiep1.startdate,    champion_eiep1.enddate,   champion_eiep1.reportmonth,    champion_eiep1.units,    champion_eiep1.status,    champion_eiep1.retailer,    metercontact,
    champion_eiep1.pricecode,    champion_eiep1.fixedvariable,    champion_eiep1.pricerate,    champion_eiep1.charge,    champion_eiep1.chargeabledays,
    champion_registry.retailer as 'current-retailer', category,distpricecat, meterregister, metermultiplier, metertypenhh,  addressuserref,  addressnumber ,
    addressstreet,    addresstown,    icpstatus,    icpstatusreason           
FROM
    scm.champion_registry
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where   
 
  champion_eiep1.units> '15000' or champion_eiep1.units< -'15000'
  

order by champion_eiep1.icp 
    
     
 
     
 


       
  
   
  





 
 

 
 


  







 
 
 