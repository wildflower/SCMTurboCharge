SELECT 
    addressuserref,
    addressnumber,
    addressstreet,
    addresstown,
    addressregion
   
FROM
    champion_registry, champion_eiep1
        inner join
    champion_eiep1 ON champion_registry.icp = champion_eiep1.icp
where
    champion_registry.icp = '0000808802WAC73'
    







 
 
 