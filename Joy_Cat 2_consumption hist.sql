select 
champion_registry.icp, 
concat(format((sum(units*(1-abs(sign(reportmonth-201001))))-sum(units*(1-abs(sign(reportmonth-201002)))))/sum(units*(1-abs(sign(reportmonth-201002))))*100,0),'%') as '201001',
concat(format((sum(units*(1-abs(sign(reportmonth-201002))))-sum(units*(1-abs(sign(reportmonth-201003)))))/sum(units*(1-abs(sign(reportmonth-201003))))*100,0),'%') as '201002',
concat(format((sum(units*(1-abs(sign(reportmonth-201003))))-sum(units*(1-abs(sign(reportmonth-201004)))))/sum(units*(1-abs(sign(reportmonth-201004))))*100,0),'%') as '201003',
concat(format((sum(units*(1-abs(sign(reportmonth-201004))))-sum(units*(1-abs(sign(reportmonth-201005)))))/sum(units*(1-abs(sign(reportmonth-201005))))*100,0),'%') as '201004',
concat(format((sum(units*(1-abs(sign(reportmonth-201005))))-sum(units*(1-abs(sign(reportmonth-201006)))))/sum(units*(1-abs(sign(reportmonth-201006))))*100,0),'%') as '201005',
concat(format((sum(units*(1-abs(sign(reportmonth-201006))))-sum(units*(1-abs(sign(reportmonth-201007)))))/sum(units*(1-abs(sign(reportmonth-201007))))*100,0),'%') as '201006',
concat(format((sum(units*(1-abs(sign(reportmonth-201007))))-sum(units*(1-abs(sign(reportmonth-201008)))))/sum(units*(1-abs(sign(reportmonth-201008))))*100,0),'%') as '201007',
concat(format((sum(units*(1-abs(sign(reportmonth-201008))))-sum(units*(1-abs(sign(reportmonth-201009)))))/sum(units*(1-abs(sign(reportmonth-201009))))*100,0),'%') as '201008',
concat(format((sum(units*(1-abs(sign(reportmonth-201009))))-sum(units*(1-abs(sign(reportmonth-201010)))))/sum(units*(1-abs(sign(reportmonth-201010))))*100,0),'%') as '201009',
concat(format((sum(units*(1-abs(sign(reportmonth-201010))))-sum(units*(1-abs(sign(reportmonth-201011)))))/sum(units*(1-abs(sign(reportmonth-201011))))*100,0),'%') as '201010',
concat(format((sum(units*(1-abs(sign(reportmonth-201011))))-sum(units*(1-abs(sign(reportmonth-201012)))))/sum(units*(1-abs(sign(reportmonth-201012))))*100,0),'%') as '201011',
concat(format((sum(units*(1-abs(sign(reportmonth-201012))))-sum(units*(1-abs(sign(reportmonth-201101)))))/sum(units*(1-abs(sign(reportmonth-201101))))*100,0),'%') as '201012',
concat(format((sum(units*(1-abs(sign(reportmonth-201101))))-sum(units*(1-abs(sign(reportmonth-201102)))))/sum(units*(1-abs(sign(reportmonth-201102))))*100,0),'%') as '201101',
concat(format((sum(units*(1-abs(sign(reportmonth-201102))))-sum(units*(1-abs(sign(reportmonth-201103)))))/sum(units*(1-abs(sign(reportmonth-201103))))*100,0),'%') as '201102',
concat(format((sum(units*(1-abs(sign(reportmonth-201103))))-sum(units*(1-abs(sign(reportmonth-201104)))))/sum(units*(1-abs(sign(reportmonth-201104))))*100,0),'%') as '201103',
concat(format((sum(units*(1-abs(sign(reportmonth-201104))))-sum(units*(1-abs(sign(reportmonth-201105)))))/sum(units*(1-abs(sign(reportmonth-201105))))*100,0),'%') as '201104',
concat(format((sum(units*(1-abs(sign(reportmonth-201105))))-sum(units*(1-abs(sign(reportmonth-201106)))))/sum(units*(1-abs(sign(reportmonth-201106))))*100,0),'%') as '201105',
concat(format((sum(units*(1-abs(sign(reportmonth-201106))))-sum(units*(1-abs(sign(reportmonth-201107)))))/sum(units*(1-abs(sign(reportmonth-201107))))*100,0),'%') as '201106',
concat(format((sum(units*(1-abs(sign(reportmonth-201107))))-sum(units*(1-abs(sign(reportmonth-201108)))))/sum(units*(1-abs(sign(reportmonth-201108))))*100,0),'%') as '201107',
concat(format((sum(units*(1-abs(sign(reportmonth-201108))))-sum(units*(1-abs(sign(reportmonth-201109)))))/sum(units*(1-abs(sign(reportmonth-201109))))*100,0),'%') as '201108',
concat(format((sum(units*(1-abs(sign(reportmonth-201109))))-sum(units*(1-abs(sign(reportmonth-201110)))))/sum(units*(1-abs(sign(reportmonth-201110))))*100,0),'%') as '201109',
concat(format((sum(units*(1-abs(sign(reportmonth-201110))))-sum(units*(1-abs(sign(reportmonth-201111)))))/sum(units*(1-abs(sign(reportmonth-201111))))*100,0),'%') as '201110',
concat(format((sum(units*(1-abs(sign(reportmonth-201111))))-sum(units*(1-abs(sign(reportmonth-201112)))))/sum(units*(1-abs(sign(reportmonth-201112))))*100,0),'%') as '201111',   
concat(format((sum(units*(1-abs(sign(reportmonth-201112))))-sum(units*(1-abs(sign(reportmonth-201201)))))/sum(units*(1-abs(sign(reportmonth-201201))))*100,0),'%') as '201201',
concat(format((sum(units*(1-abs(sign(reportmonth-201201))))-sum(units*(1-abs(sign(reportmonth-201202)))))/sum(units*(1-abs(sign(reportmonth-201202))))*100,0),'%') as '201202',-


addressuserref,    addressnumber,    addressstreet,    addresstown,    icpstatus,    metertypenhh,
    distpricecat,    category


from
    champion_eiep1
    inner join champion_registry on  champion_registry.icp = champion_eiep1.icp
    where champion_registry.category = 2
    group by icp;