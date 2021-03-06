select icp,
    (sum(units*(1-abs(sign(reportmonth-201001))))/sum(units*(1-abs(sign(reportmonth-201002)))))*100 as '201001',
    (sum(units*(1-abs(sign(reportmonth-201002))))/sum(units*(1-abs(sign(reportmonth-201003)))))*100 as '201002',
    (sum(units*(1-abs(sign(reportmonth-201003))))/sum(units*(1-abs(sign(reportmonth-201004)))))*100 as '201003',
    (sum(units*(1-abs(sign(reportmonth-201004))))/sum(units*(1-abs(sign(reportmonth-201005)))))*100 as '201004',
    (sum(units*(1-abs(sign(reportmonth-201005))))/sum(units*(1-abs(sign(reportmonth-201006)))))*100 as '201005',
    (sum(units*(1-abs(sign(reportmonth-201006))))/sum(units*(1-abs(sign(reportmonth-201007)))))*100 as '201006',
    (sum(units*(1-abs(sign(reportmonth-201007))))/sum(units*(1-abs(sign(reportmonth-201008)))))*100 as '201007',
    (sum(units*(1-abs(sign(reportmonth-201008))))/sum(units*(1-abs(sign(reportmonth-201009)))))*100 as '201008',
    (sum(units*(1-abs(sign(reportmonth-201009))))/sum(units*(1-abs(sign(reportmonth-201010)))))*100 as '201009',
    (sum(units*(1-abs(sign(reportmonth-201010))))/sum(units*(1-abs(sign(reportmonth-201011)))))*100 as '201010',
    (sum(units*(1-abs(sign(reportmonth-201011))))/sum(units*(1-abs(sign(reportmonth-201012)))))*100 as '201011',
    (sum(units*(1-abs(sign(reportmonth-201012))))/sum(units*(1-abs(sign(reportmonth-201101)))))*100 as '201012',
    (sum(units*(1-abs(sign(reportmonth-201101))))/sum(units*(1-abs(sign(reportmonth-201102)))))*100 as '201101',
    (sum(units*(1-abs(sign(reportmonth-201102))))/sum(units*(1-abs(sign(reportmonth-201103)))))*100 as '201102',
    (sum(units*(1-abs(sign(reportmonth-201103))))/sum(units*(1-abs(sign(reportmonth-201104)))))*100 as '201103',
    (sum(units*(1-abs(sign(reportmonth-201104))))/sum(units*(1-abs(sign(reportmonth-201105)))))*100 as '201104',
    (sum(units*(1-abs(sign(reportmonth-201105))))/sum(units*(1-abs(sign(reportmonth-201106)))))*100 as '201105',
    (sum(units*(1-abs(sign(reportmonth-201106))))/sum(units*(1-abs(sign(reportmonth-201107)))))*100 as '201106',
    (sum(units*(1-abs(sign(reportmonth-201107))))/sum(units*(1-abs(sign(reportmonth-201108)))))*100 as '201107',
    (sum(units*(1-abs(sign(reportmonth-201108))))/sum(units*(1-abs(sign(reportmonth-201109)))))*100 as '201108',
    (sum(units*(1-abs(sign(reportmonth-201109))))/sum(units*(1-abs(sign(reportmonth-201110)))))*100 as '201109',
    (sum(units*(1-abs(sign(reportmonth-201110))))/sum(units*(1-abs(sign(reportmonth-201111)))))*100 as '201110',
    (sum(units*(1-abs(sign(reportmonth-201111))))/sum(units*(1-abs(sign(reportmonth-201112)))))*100 as '201111'
from
    sunrise_eiep1
where
    fixedvariable = 'V'
    group  by icp;