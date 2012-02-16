SELECT 
    sunrise_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,    
    icpstatus,
    category,
    sunrise_eiep1.reportmonth,
    sunrise_eiep1.units,    
    sunrise_eiep1.status,
    sunrise_eiep1.retailer,
    sunrise_eiep1.pricecode,
    sunrise_eiep1.pricerate,
    sunrise_eiep1.charge       
   
FROM
    scm.sunrise_registry
inner join sunrise_eiep1 on sunrise_registry.icp = sunrise_eiep1.icp
where     
sunrise_eiep1.fixedvariable = 'V'
and sunrise_eiep1.icp = '1000002601BPD3C'


 
 
  
    







 
 
 