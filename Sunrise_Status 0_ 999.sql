select 
 sunrise_registry.icp,
    sunrise_eiep1.reportmonth,
    sunrise_eiep1.units,
    sunrise_eiep1.status,
    sunrise_eiep1.retailer,
    metercontact,
    sunrise_eiep1.pricecode,
    sunrise_eiep1.fixedvariable,
    sunrise_eiep1.pricerate,
    sunrise_eiep1.charge,
    sunrise_eiep1.chargeabledays,
    sunrise_registry.retailer,
    icpstatus,
    icpcreationdate,
    icpcommisiondate,    
    eventstart,
    eventend,    
    addressuserref, 
    addressnumber,
    addressstreet,
    addresstown,
    metertypenhh,
    metertypehhr,
    distpricecat,
    category

FROM
    scm.sunrise_registry
        left join
    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
where sunrise_registry.icpstatus = '0'  or sunrise_registry.icpstatus = '999'  
and sunrise_eiep1.reportmonth is null  
 
order by sunrise_registry.icp
