SELECT 
    champion_registry.icp,
    champion_eiep1.startdate,
    champion_eiep1.enddate,
    champion_eiep1.reportmonth,
    meterregister, 
    champion_eiep1.units,
    champion_eiep1.status,
    champion_eiep1.retailer,
    metercontact,
    champion_eiep1.pricecode,
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
    
    (reportmonth > '201202')
 
and (pricecode = 'WA07' /*night*/
or pricecode = 'WA06'   /*day */
or pricecode = 'WA26'   /*day*/
or pricecode = 'WA27' )  /* night */
order by icp
 
     