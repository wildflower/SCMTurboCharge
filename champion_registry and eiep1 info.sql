SELECT 
    champion_registry.icp,    champion_eiep1.reportmonth,    champion_eiep1.units,    champion_eiep1.status,    champion_eiep1.retailer,    metercontact,
    champion_eiep1.pricecode,    champion_eiep1.fixedvariable,    champion_eiep1.pricerate,    champion_eiep1.charge,    champion_eiep1.chargeabledays,    champion_registry.retailer as 'reg-retailer',
    addressuserref,    addressnumber,    addressstreet,    addresstown,    icpstatus,    icpstatusreason,    metertypenhh,    distpricecat,    category
from
     champion_registry
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where
    champion_registry.icp = '0000191110WAB2B'  
order by champion_eiep1.reportmonth desc
    
     
 
     
 


       
  
   
  





 
 

 
 


  







 
 
 