 /* This will show a list of ICPs that have no records for the reportmonth chosen, meaning the retailer didn't send us any data for it - not even UBs 
 -this query only runs for 1 month at a time*/
 
select 
    tmp_reg.icp,    
    champion_registry.retailer as 'current-retailer',    icpcreationdate,    icpcommisiondate,        eventstart,
    eventend,         addressuserref,     addressnumber,    addressstreet,    addresstown,       metertypenhh,
    metertypehhr,    distpricecat,    category,    icpstatus,    icpstatusreason 
from
    (select 
        champion_registry.icp
    from
        champion_registry
    where
        champion_registry.icpstatus = 2  and metertypehhr <> '1' and category <> '0' ) as tmp_reg
        left join
    (select 
        champion_eiep1.icp  
    from
        champion_eiep1
    where
        reportmonth = 201204  ) as tmp_eiep1 ON tmp_reg.icp = tmp_eiep1.icp inner join  champion_registry  on tmp_reg.icp = champion_registry.icp
where
    tmp_eiep1.icp is NULL
    
    /*we need to remember that it may not have been billed because it was switching to another retailer
    -it would be good to put in the file which retailer submitted the EIEP1 data, 
    or was disconnected for a time, or the retailer may have been doing a major upgrade but I cant seems to achieve it in this query*/