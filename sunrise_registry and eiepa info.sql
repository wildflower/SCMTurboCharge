SELECT 
    sunrise_registry.icp,    addressuserref,    addressnumber,    addressstreet,    addresstown,   
    icpstatus,    category,    metertypehhr,    ami,    meterregister,    distpricecat,    reference,
    chargeablecapacity,    sunrise_eiep1.reportmonth,    sunrise_eiep1.unittype,    sunrise_eiep1.units,   
    sunrise_eiep1.status,    sunrise_eiep1.retailer,    sunrise_eiep1.chargeabledays,    sunrise_eiep1.pricecode,
    sunrise_eiep1.pricerate,    sunrise_eiep1.charge,    sunrise_eiep1.fixedvariable    
FROM    scm.sunrise_registry
inner join sunrise_eiep1 on sunrise_registry.icp = sunrise_eiep1.icp    
   
where  sunrise_registry.icp = '1000000016BPF1D'
order by reportmonth desc

 
  
  
    







 
 
 