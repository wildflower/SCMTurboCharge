SELECT 
    champion_registry.icp,  champion_eiep1.startdate,    champion_eiep1.enddate,  champion_eiep1.reportmonth,    meterregister,    AMI,    champion_eiep1.units,
    champion_eiep1.status,    champion_eiep1.retailer,    metercontact,      champion_eiep1.pricecode,
    champion_eiep1.fixedvariable,    champion_eiep1.pricerate,    champion_eiep1.charge,    champion_eiep1.chargeabledays,
    champion_registry.retailer as 'current retailer',  meteruserref,
    addressuserref,    addressnumber,    addressstreet,    addresstown,
    icpstatus,    icpstatusreason,    metertypenhh,    distpricecat,    category
FROM
    scm.champion_registry
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where
    AMI = '1' /* this has been set to 1 by Haydn to indicate smart metering but in reality it may be Y on the registry */
    and champion_eiep1.reportmonth > 201202 and fixedvariable = 'V'
    and distpricecat = 'D'
order by champion_eiep1.icp  
    
     
 
     
 


       
  
   
  





 
 

 
 


  







 
 
 