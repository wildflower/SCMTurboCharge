 /* This will show a list of ICPs that have no records for the reportmonth chosen, meaning the retailer didn't send us any data for it - not even UBs */
 
select 
    tmp_reg.icp, 
    sunrise_registry.retailer,
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
    category,
    icpstatus,
    icpstatusreason
from
    (select 
        sunrise_registry.icp
    from
        sunrise_registry
    where
        sunrise_registry.icpstatus = 2  ) as tmp_reg
        left join
    (select 
        sunrise_eiep1.icp
    from
        sunrise_eiep1
    where
        reportmonth = 201204) as tmp_eiep1 ON tmp_reg.icp = tmp_eiep1.icp inner join  sunrise_registry  on tmp_reg.icp = sunrise_registry.icp
where
    tmp_eiep1.icp is NULL