SELECT 
    champion_registry.icp,
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,    
    icpstatus,
    category,
    metertypehhr,
    ami,
    meterregister,
    distpricecat,
    champion_eiep1.reportmonth,
    champion_eiep1.units,    
    champion_eiep1.retailer,
    champion_eiep1.pricecode,
    champion_eiep1.pricerate,
    champion_eiep1.charge       
   
FROM
    scm.champion_registry
inner join champion_eiep1 on champion_registry.icp = champion_eiep1.icp
where     
champion_eiep1.fixedvariable = 'V'
and category = '2'
and reportmonth > '200701'


order by icp
 
 
  
    







 
 
 