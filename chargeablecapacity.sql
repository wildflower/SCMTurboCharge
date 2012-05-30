(select 
    sunrise_eiep1.icp,pricecode, chargeablecapacity, reference, units, max(reportmonth) as reportmonth
from
    sunrise_eiep1
        inner join
    sunrise_registry ON sunrise_registry.icp = sunrise_eiep1.icp
where
    pricecode = 'HET076' and left(substring_index(reference,' ',-1),locate('kW',substring_index(reference,' ',-1))-1) != sunrise_eiep1.units and icpstatus = 2 group by icp order by reportmonth desc)
union
(select 
    sunrise_eiep1.icp,pricecode, chargeablecapacity, reference, units, max(reportmonth) as reportmonth
from
    sunrise_eiep1
        inner join
    sunrise_registry ON sunrise_registry.icp = sunrise_eiep1.icp
where
    pricecode = 'HET074' and sunrise_registry.chargeablecapacity != sunrise_eiep1.units and icpstatus = 2 group by icp order by reportmonth desc)
