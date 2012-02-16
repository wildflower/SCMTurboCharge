SELECT 
    sunrise_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,
    addressregion,
    sunrise_eiep1.reportmonth,
    sunrise_eiep1.units,
    sunrise_eiep1.unittype,
    sunrise_eiep1.status,
    sunrise_eiep1.retailer,
    sunrise_eiep1.pricecode,
    sunrise_eiep1.pricerate,
    sunrise_eiep1.charge       
   
FROM
    scm.sunrise_registry
inner join sunrise_eiep1 on sunrise_registry.icp = sunrise_eiep1.icp
 where
  
  sunrise_eiep1.reportmonth> '201107'
 and sunrise_eiep1.units <'20'
 and sunrise_eiep1.fixedvariable = 'V'
 
 order by sunrise_registry.icp
    







 
 
 