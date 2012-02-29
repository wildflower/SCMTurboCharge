create temporary table es_count
select  icp, count(status) as `ES` from sunrise_eiep1 where status = "ES" group by icp order by `ES` desc;

create temporary table icp_avg

select sunrise_registry.icp, avg(units) as `Units` from sunrise_eiep1 inner join sunrise_registry on sunrise_registry.icp = sunrise_eiep1.icp where sunrise_registry.icpstatus = 2  and fixedvariable = "V" group by sunrise_eiep1.icp order by Units ;

select icp_avg.icp, icp_avg.Units, es_count.ES from icp_avg inner join es_count on icp_avg.icp = es_count.icp;
