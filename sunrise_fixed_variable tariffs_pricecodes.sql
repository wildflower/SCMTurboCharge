SELECT 
    sunrise_registry.icp, distpricecat,  sunrise_eiep1.reportmonth,    sunrise_eiep1.unittype,    sunrise_eiep1.units,sunrise_eiep1.status,
    sunrise_eiep1.fixedvariable,    sunrise_eiep1.chargeabledays,    sunrise_eiep1.pricecode,    sunrise_eiep1.pricerate,    sunrise_eiep1.charge,
     sunrise_eiep1.retailer,sunrise_registry.retailer as 'Current Retailer', chargeablecapacity, reference ,  addressuserref,    addressnumber,  
     addressstreet,    addresstown,    icpstatus,    category,    metertypehhr,    ami,
    meterregister
FROM
    scm.sunrise_registry
        inner join
    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
where    
  sunrise_eiep1.reportmonth = '201202'     
    
order by sunrise_registry.icp desc

 
  
  
    







 
 
 