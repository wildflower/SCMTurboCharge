select 
    champion_registry.icp,
    concat(lat, ',', lng) as location,
    addressnumber,
    addressstreet,
    addresstown,
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200801)))) as 'RD-200801',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200802)))) as 'RD-200802',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200803)))) as 'RD-200803',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200805)))) as 'RD-200805',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200806)))) as 'RD-200806',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200807)))) as 'RD-200807',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200808)))) as 'RD-200808',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200809)))) as 'RD-200809',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200810)))) as 'RD-200810',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200811)))) as 'RD-200811',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200812)))) as 'RD-200812',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200901)))) as 'RD-200901',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200902)))) as 'RD-200902',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200903)))) as 'RD-200903',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200904)))) as 'RD-200904',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200905)))) as 'RD-200905',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200906)))) as 'RD-200906',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200907)))) as 'RD-200907',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200908)))) as 'RD-200908',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200909)))) as 'RD-200909',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200910)))) as 'RD-200910',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200911)))) as 'RD-200911',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 200912)))) as 'RD-200912',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201001)))) as 'RD-201001',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201002)))) as 'RD-201002',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201003)))) as 'RD-201003',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201004)))) as 'RD-201004',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201005)))) as 'RD-201005',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201006)))) as 'RD-201006',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201007)))) as 'RD-201007',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201008)))) as 'RD-201008',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201009)))) as 'RD-201009',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201010)))) as 'RD-201010',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201011)))) as 'RD-201011',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201012)))) as 'RD-201012',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201101)))) as 'RD-201101',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201102)))) as 'RD-201102',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201103)))) as 'RD-201103',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201104)))) as 'RD-201104',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201105)))) as 'RD-201105',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201106)))) as 'RD-201106',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201107)))) as 'RD-201107',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201108)))) as 'RD-201108',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201109)))) as 'RD-201109',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201110)))) as 'RD-201110',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201111)))) as 'RD-201111',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201112)))) as 'RD-201112',
    sum(if(strcmp(status, 'RD'), 0, units) * (1 - abs(sign(reportmonth - 201201)))) as 'RD-201201',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200801)))) as 'ES-200801',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200802)))) as 'ES-200802',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200803)))) as 'ES-200803',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200805)))) as 'ES-200805',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200806)))) as 'ES-200806',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200807)))) as 'ES-200807',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200808)))) as 'ES-200808',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200809)))) as 'ES-200809',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200810)))) as 'ES-200810',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200811)))) as 'ES-200811',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200812)))) as 'ES-200812',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200901)))) as 'ES-200901',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200902)))) as 'ES-200902',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200903)))) as 'ES-200903',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200904)))) as 'ES-200904',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200905)))) as 'ES-200905',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200906)))) as 'ES-200906',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200907)))) as 'ES-200907',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200908)))) as 'ES-200908',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200909)))) as 'ES-200909',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200910)))) as 'ES-200910',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200911)))) as 'ES-200911',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 200912)))) as 'ES-200912',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201001)))) as 'ES-201001',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201002)))) as 'ES-201002',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201003)))) as 'ES-201003',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201004)))) as 'ES-201004',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201005)))) as 'ES-201005',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201006)))) as 'ES-201006',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201007)))) as 'ES-201007',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201008)))) as 'ES-201008',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201009)))) as 'ES-201009',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201010)))) as 'ES-201010',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201011)))) as 'ES-201011',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201012)))) as 'ES-201012',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201101)))) as 'ES-201101',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201102)))) as 'ES-201102',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201103)))) as 'ES-201103',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201104)))) as 'ES-201104',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201105)))) as 'ES-201105',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201106)))) as 'ES-201106',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201107)))) as 'ES-201107',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201108)))) as 'ES-201108',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201109)))) as 'ES-201109',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201110)))) as 'ES-201110',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201111)))) as 'ES-201111',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201112)))) as 'ES-201112',
    sum(if(strcmp(status, 'ES'), 0, units) * (1 - abs(sign(reportmonth - 201201)))) as 'ES-201201',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200801)))) as 'RV-200801',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200802)))) as 'RV-200802',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200803)))) as 'RV-200803',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200805)))) as 'RV-200805',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200806)))) as 'RV-200806',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200807)))) as 'RV-200807',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200808)))) as 'RV-200808',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200809)))) as 'RV-200809',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200810)))) as 'RV-200810',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200811)))) as 'RV-200811',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200812)))) as 'RV-200812',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200901)))) as 'RV-200901',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200902)))) as 'RV-200902',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200903)))) as 'RV-200903',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200904)))) as 'RV-200904',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200905)))) as 'RV-200905',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200906)))) as 'RV-200906',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200907)))) as 'RV-200907',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200908)))) as 'RV-200908',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200909)))) as 'RV-200909',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200910)))) as 'RV-200910',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200911)))) as 'RV-200911',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 200912)))) as 'RV-200912',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201001)))) as 'RV-201001',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201002)))) as 'RV-201002',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201003)))) as 'RV-201003',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201004)))) as 'RV-201004',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201005)))) as 'RV-201005',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201006)))) as 'RV-201006',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201007)))) as 'RV-201007',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201008)))) as 'RV-201008',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201009)))) as 'RV-201009',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201010)))) as 'RV-201010',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201011)))) as 'RV-201011',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201012)))) as 'RV-201012',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201101)))) as 'RV-201101',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201102)))) as 'RV-201102',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201103)))) as 'RV-201103',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201104)))) as 'RV-201104',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201105)))) as 'RV-201105',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201106)))) as 'RV-201106',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201107)))) as 'RV-201107',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201108)))) as 'RV-201108',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201109)))) as 'RV-201109',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201110)))) as 'RV-201110',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201111)))) as 'RV-201111',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201112)))) as 'RV-201112',
    sum(if(strcmp(status, 'RV'), 0, units) * (1 - abs(sign(reportmonth - 201201)))) as 'RV-201201'
from
    champion_eiep1
        inner join
    champion_registry ON champion_registry.icp = champion_eiep1.icp
where
    champion_registry.category> '1'
    and champion_registry.icp= '0000151835WA688'
group by icp