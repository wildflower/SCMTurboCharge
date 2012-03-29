select 
    champion_registry.icp,    
    sum(kwh * (1 - abs(sign(reportmonth - 201005)))) as '201005',
    sum(kwh * (1 - abs(sign(reportmonth - 201006)))) as '201006',
    sum(kwh * (1 - abs(sign(reportmonth - 201007)))) as '201007',
    sum(kwh * (1 - abs(sign(reportmonth - 201008)))) as '201008',
    sum(kwh * (1 - abs(sign(reportmonth - 201009)))) as '201009',
    sum(kwh * (1 - abs(sign(reportmonth - 201010)))) as '201010',
    sum(kwh * (1 - abs(sign(reportmonth - 201011)))) as '201011',
    sum(kwh * (1 - abs(sign(reportmonth - 201012)))) as '201012',
    sum(kwh * (1 - abs(sign(reportmonth - 201101)))) as '201101',
    sum(kwh * (1 - abs(sign(reportmonth - 201102)))) as '201102',
    sum(kwh * (1 - abs(sign(reportmonth - 201103)))) as '201103',
    sum(kwh * (1 - abs(sign(reportmonth - 201104)))) as '201104',
    sum(kwh * (1 - abs(sign(reportmonth - 201105)))) as '201105',
    sum(kwh * (1 - abs(sign(reportmonth - 201106)))) as '201106',
    sum(kwh * (1 - abs(sign(reportmonth - 201107)))) as '201107',
    sum(kwh * (1 - abs(sign(reportmonth - 201108)))) as '201108',
    sum(kwh * (1 - abs(sign(reportmonth - 201109)))) as '201109',
    sum(kwh * (1 - abs(sign(reportmonth - 201110)))) as '201110',
    sum(kwh * (1 - abs(sign(reportmonth - 201111)))) as '201111',
    sum(kwh * (1 - abs(sign(reportmonth - 201112)))) as '201112'
from
    champion_eiep3
inner join champion_registry on champion_registry.icp = champion_eiep3.icp
where icpstatus = 2
group by icp      