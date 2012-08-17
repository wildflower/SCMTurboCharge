select 
    icp, reportmonth, pricecode, tmp.Tariff, tmp.pricerate
from
    (select 
        icp,
            retailer,
            reportmonth,
            tariffs.Price as 'Tariff',
            champion_eiep1.pricecode,
            pricerate
    from
        champion_eiep1
    inner join tariffs ON tariffs.code = champion_eiep1.pricecode and (champion_eiep1.startdate > tariffs.StartDate and champion_eiep1.startdate < date_add(tariffs.StartDate, interval 1 year))
    where
        retailer = 'PUNZ') as tmp
where
    truncate(tmp.Tariff, 3) != truncate(tmp.pricerate, 3)