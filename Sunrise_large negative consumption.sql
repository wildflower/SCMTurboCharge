SELECT 
    sunrise_registry.icp,    sunrise_eiep1.reportmonth,    sunrise_eiep1.units,    sunrise_eiep1.status,    sunrise_eiep1.retailer,    metercontact,
    sunrise_eiep1.pricecode,    sunrise_eiep1.fixedvariable,    sunrise_eiep1.pricerate,    sunrise_eiep1.charge,    sunrise_eiep1.chargeabledays,
    sunrise_registry.retailer as 'current-retailer',    addressuserref,     addressnumber,    addressstreet,    addresstown,    icpstatus,    icpstatusreason, 
    metertypenhh,    distpricecat,    category
FROM
    scm.sunrise_registry
        inner join
    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
    where   sunrise_eiep1.units < '-1000'


    order by sunrise_eiep1.reportmonth desc
    
     
 
     
 


       
  
   
  





 
 

 
 


  







 
 
 