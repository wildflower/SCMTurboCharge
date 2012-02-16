SELECT 
    champion_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,
    addressregion,
    champion_eiep1.reportmonth,
    champion_eiep1.units,
    champion_eiep1.unittype,
    champion_eiep1.status,
    champion_eiep1.retailer,
    champion_eiep1.pricecode,
    champion_eiep1.pricerate,
    champion_eiep1.charge       
   
FROM
    scm.champion_registry
inner join champion_eiep1 on champion_registry.icp = champion_eiep1.icp
 where
  
  champion_eiep1.reportmonth> '201107'
 and champion_eiep1.units <'20'
 and champion_eiep1.fixedvariable = 'V'
 
 order by champion_registry.icp
    







 
 
 