SELECT 
    sunrise_registry.icp,    sunrise_eiep1.reportmonth,    sunrise_eiep1.units,    sunrise_eiep1.status,    sunrise_eiep1.retailer,    metercontact,
    sunrise_eiep1.pricecode,    sunrise_eiep1.fixedvariable,    sunrise_eiep1.pricerate,    sunrise_eiep1.charge,    sunrise_registry.retailer,
    addressuserref,    addressnumber,    addressstreet,    addresstown,    icpstatus,    metertypenhh,    distpricecat,    category
FROM
    scm.sunrise_registry        inner join    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
where
    sunrise_eiep1.status = 'UB' and sunrise_eiep1.reportmonth = '201111'     
      
    and icpstatus = '2'   
and sunrise_registry.retailer = 'BOPE'

order by sunrise_registry.icp