SELECT  

champion_registry.icp,    champion_eiep1.reportmonth,    champion_eiep1.units,    champion_eiep1.status,    champion_eiep1.retailer,    metercontact,
    champion_eiep1.pricecode, champion_eiep1.fixedvariable,   champion_eiep1.pricerate,    champion_eiep1.charge,  champion_registry.retailer ,   addressuserref,    addressnumber,    addressstreet,
    addresstown,    icpstatus,    metertypenhh,    distpricecat,    category

FROM
    scm.champion_registry   inner join     champion_eiep1 ON champion_registry.icp = champion_eiep1.icp


where   champion_eiep1.fixedvariable = 'V' and units = '0'  and icpstatus = '2' and champion_eiep1.reportmonth > '201109'
order by reportmonth