 /* This will show a list of ICPs that have no records for the reportmonth chosen, meaning the retailer didn't send us any data for it - not even UBs */
 
select 
    tmp_reg.icp, 
    champion_registry.retailer,
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
    icpstatus,
    icpstatusreason
from
    (select 
        champion_registry.icp
    from
        champion_registry
    where
        champion_registry.icpstatus = 2 and champion_registry.metertypenhh = 'Y' ) as tmp_reg
        left join
    (select 
        champion_eiep1.icp
    from
        champion_eiep1
    where
        reportmonth = 201202) as tmp_eiep1 ON tmp_reg.icp = tmp_eiep1.icp inner join  champion_registry  on tmp_reg.icp = champion_registry.icp
where
    tmp_eiep1.icp is NULL