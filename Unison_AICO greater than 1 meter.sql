select distinct unison_eiep1.icp from unison_eiep1 inner join unison_registry on unison_registry.icp = unison_eiep1.icp
where pricecode like "%AICO" and meterregister > 1
and   metercontact = 'CTCT'



order by reportmonth desc
