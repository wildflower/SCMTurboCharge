SELECT 
    champion_registry.icp, champion_eiep1.startdate,champion_eiep1.enddate,   champion_eiep1.reportmonth,    champion_eiep1.units,    champion_eiep1.status,
    champion_eiep1.retailer,    metercontact,
    champion_eiep1.pricecode, distpricecat, meterregister,    champion_eiep1.fixedvariable,    champion_eiep1.pricerate,    champion_eiep1.charge,    champion_eiep1.chargeabledays,
    champion_registry.retailer as 'current-retailer',    addressuserref,     addressnumber,    addressstreet,    addresstown,    icpstatus,    icpstatusreason, 
    metertypenhh, category
FROM
    scm.champion_registry
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
    where  champion_registry.icp=  '0000151835WA688'

    and fixedvariable = 'V'  

    order by champion_eiep1.reportmonth desc
    
     
 
     
 


       
  
   
  





 
 

 
 


  







 
 