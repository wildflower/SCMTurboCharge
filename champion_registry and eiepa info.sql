SELECT 
    champion_registry.icp,    addressuserref,    addressnumber,    addressstreet,    addresstown,  
    icpstatus,    category,    champion_eiep1.reportmonth,    champion_eiep1.units,    
    champion_eiep1.status,    champion_eiep1.retailer,    champion_eiep1.pricecode,    champion_eiep1.pricerate,
    champion_eiep1.charge   
FROM
    scm.champion_registry inner join champion_eiep1 on champion_registry.icp = champion_eiep1.icp
where   champion_eiep1.fixedvariable = 'V' and champion_eiep1.icp = '0007755247WA79D'
  







 
 
 