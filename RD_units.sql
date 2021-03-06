select 
    sunrise_registry.icp,
    concat(lat, ',', lng) as location,
    addressnumber,
    addressstreet,
    addresstown,
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200801)))) as '200801',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200802)))) as '200802',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200803)))) as '200803',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200805)))) as '200805',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200806)))) as '200806',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200807)))) as '200807',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200808)))) as '200808',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200809)))) as '200809',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200810)))) as '200810',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200811)))) as '200811',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200812)))) as '200812',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200901)))) as '200901',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200902)))) as '200902',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200903)))) as '200903',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200904)))) as '200904',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200905)))) as '200905',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200906)))) as '200906',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200907)))) as '200907',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200908)))) as '200908',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200909)))) as '200909',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200910)))) as '200910',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200911)))) as '200911',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200912)))) as '200912',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201001)))) as '201001',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201002)))) as '201002',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201003)))) as '201003',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201004)))) as '201004',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201005)))) as '201005',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201006)))) as '201006',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201007)))) as '201007',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201008)))) as '201008',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201009)))) as '201009',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201010)))) as '201010',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201011)))) as '201011',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201012)))) as '201012',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201101)))) as '201101',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201102)))) as '201102',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201103)))) as '201103',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201104)))) as '201104',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201105)))) as '201105',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201106)))) as '201106',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201107)))) as '201107',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201108)))) as '201108',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201109)))) as '201109',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201110)))) as '201110',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201111)))) as '201111',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201112)))) as '201112',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201201)))) as '201201'
from
    sunrise_eiep1
        inner join
    sunrise_registry ON sunrise_registry.icp = sunrise_eiep1.icp
where
    sunrise_registry.icpstatus = 2
group by icp