select 
 champion_registry.icp,
    champion_eiep1.reportmonth,
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
    scm.champion_registry
        left join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where champion_registry.icpstatus = '0'  or champion_registry.icpstatus = '999'  
and champion_eiep1.reportmonth is null

 
 

 
order by champion_registry.icp
