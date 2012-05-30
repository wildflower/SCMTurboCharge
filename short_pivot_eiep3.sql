select 
    champion_registry.icp,    
    format(sum(kwh * (1 - abs(sign(reportmonth - 201005)))),0) as '201005',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201006)))),0) as '201006',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201007)))),0) as '201007',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201008)))),0) as '201008',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201009)))),0) as '201009',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201010)))),0) as '201010',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201011)))),0) as '201011',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201012)))),0) as '201012',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201101)))),0) as '201101',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201102)))),0) as '201102',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201103)))),0) as '201103',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201104)))),0) as '201104',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201105)))),0) as '201105',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201106)))),0) as '201106',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201107)))),0) as '201107',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201108)))),0) as '201108',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201109)))),0) as '201109',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201110)))),0) as '201110',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201111)))),0) as '201111',
    format(sum(kwh * (1 - abs(sign(reportmonth - 201112)))),0) as '201112'
from
    champion_eiep3
inner join champion_registry on champion_registry.icp = champion_eiep3.icp
where icpstatus = 2
group by icp      