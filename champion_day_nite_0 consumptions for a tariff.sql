SELECT 
    champion_registry.icp,
    champion_eiep1.reportmonth,
    champion_eiep1.units,
    champion_eiep1.status,
    champion_eiep1.retailer,
    metercontact,
    champion_eiep1.pricecode,
    meterregister,
    champion_eiep1.fixedvariable,
    champion_eiep1.pricerate,
    champion_eiep1.charge,
    champion_eiep1.chargeabledays,
    champion_registry.retailer,
    addressuserref, 
    addressnumber,
    addressstreet,
    addresstown,
    icpstatus,
    metertypenhh,
    distpricecat,
    category
FROM
    scm.champion_registry
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
    
where
    
    (reportmonth > '201201')
    and (pricecode = 'WA26'  /*replace this with WA26-to check zero consumption on the day register */
    and units = 'O'
    and meterregister < '3')  /* if we say put less than 3 we would just be looking at one meter-2 registers if the registry data is correct*/
  
order by icp
