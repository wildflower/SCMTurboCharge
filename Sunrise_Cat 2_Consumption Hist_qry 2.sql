select 
sunrise_registry.icp,
 sunrise_eiep1.retailer,sunrise_registry.retailer as 'current retailer',

sum(units*(1-abs(sign(left(reportmonth,4)-2006)))) as 'sum yr 06',
sum(units*(1-abs(sign(left(reportmonth,4)-2007)))) as 'sum yr 07',
sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum yr 08',
sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum yr 09',
sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum yr 10',
sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum yr 11',
sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum yr 12',


concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'YRs 2011_2009 VAR',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'YRs 2011_2010 VAR',


concat(format((sum(units*(1-abs(sign(reportmonth-201002))))-sum(units*(1-abs(sign(reportmonth-201001)))))/sum(units*(1-abs(sign(reportmonth-201001))))*100,0),'%') as '201001_02 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201003))))-sum(units*(1-abs(sign(reportmonth-201002)))))/sum(units*(1-abs(sign(reportmonth-201002))))*100,0),'%') as '201002_03 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201004))))-sum(units*(1-abs(sign(reportmonth-201003)))))/sum(units*(1-abs(sign(reportmonth-201003))))*100,0),'%') as '201003_04 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201005))))-sum(units*(1-abs(sign(reportmonth-201004)))))/sum(units*(1-abs(sign(reportmonth-201005))))*100,0),'%') as '201004_05 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201006))))-sum(units*(1-abs(sign(reportmonth-201005)))))/sum(units*(1-abs(sign(reportmonth-201005))))*100,0),'%') as '201005_06 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201007))))-sum(units*(1-abs(sign(reportmonth-201006)))))/sum(units*(1-abs(sign(reportmonth-201006))))*100,0),'%') as '201006_07 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201008))))-sum(units*(1-abs(sign(reportmonth-201007)))))/sum(units*(1-abs(sign(reportmonth-201007))))*100,0),'%') as '201007_08 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201009))))-sum(units*(1-abs(sign(reportmonth-201008)))))/sum(units*(1-abs(sign(reportmonth-201008))))*100,0),'%') as '201008_09 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201010))))-sum(units*(1-abs(sign(reportmonth-201009)))))/sum(units*(1-abs(sign(reportmonth-201009))))*100,0),'%') as '201009_10 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201011))))-sum(units*(1-abs(sign(reportmonth-201010)))))/sum(units*(1-abs(sign(reportmonth-201010))))*100,0),'%') as '201010_11 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201012))))-sum(units*(1-abs(sign(reportmonth-201011)))))/sum(units*(1-abs(sign(reportmonth-201011))))*100,0),'%') as '201011_12 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201101))))-sum(units*(1-abs(sign(reportmonth-201012)))))/sum(units*(1-abs(sign(reportmonth-201012))))*100,0),'%') as '201012_01 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201102))))-sum(units*(1-abs(sign(reportmonth-201101)))))/sum(units*(1-abs(sign(reportmonth-201101))))*100,0),'%') as '201101_02 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201103))))-sum(units*(1-abs(sign(reportmonth-201102)))))/sum(units*(1-abs(sign(reportmonth-201102))))*100,0),'%') as '201102_03 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201104))))-sum(units*(1-abs(sign(reportmonth-201103)))))/sum(units*(1-abs(sign(reportmonth-201103))))*100,0),'%') as '201103_04 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201105))))-sum(units*(1-abs(sign(reportmonth-201104)))))/sum(units*(1-abs(sign(reportmonth-201104))))*100,0),'%') as '201104_05 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201106))))-sum(units*(1-abs(sign(reportmonth-201105)))))/sum(units*(1-abs(sign(reportmonth-201105))))*100,0),'%') as '201105_06 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201107))))-sum(units*(1-abs(sign(reportmonth-201106)))))/sum(units*(1-abs(sign(reportmonth-201106))))*100,0),'%') as '201106_07 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201108))))-sum(units*(1-abs(sign(reportmonth-201107)))))/sum(units*(1-abs(sign(reportmonth-201107))))*100,0),'%') as '201107_08 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201109))))-sum(units*(1-abs(sign(reportmonth-201108)))))/sum(units*(1-abs(sign(reportmonth-201108))))*100,0),'%') as '201108_09 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201110))))-sum(units*(1-abs(sign(reportmonth-201109)))))/sum(units*(1-abs(sign(reportmonth-201109))))*100,0),'%') as '201109_10 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201111))))-sum(units*(1-abs(sign(reportmonth-201110)))))/sum(units*(1-abs(sign(reportmonth-201110))))*100,0),'%') as '201110_11 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201112))))-sum(units*(1-abs(sign(reportmonth-201111)))))/sum(units*(1-abs(sign(reportmonth-201111))))*100,0),'%') as '201111_12 var',   
concat(format((sum(units*(1-abs(sign(reportmonth-201201))))-sum(units*(1-abs(sign(reportmonth-201112)))))/sum(units*(1-abs(sign(reportmonth-201112))))*100,0),'%') as '201102_01 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201202))))-sum(units*(1-abs(sign(reportmonth-201201)))))/sum(units*(1-abs(sign(reportmonth-201201))))*100,0),'%') as '201201_02 var',
concat(format((sum(units*(1-abs(sign(reportmonth-201203))))-sum(units*(1-abs(sign(reportmonth-201202)))))/sum(units*(1-abs(sign(reportmonth-201202))))*100,0),'%') as '201202_03 var',
 

addressuserref,    addressnumber,    addressstreet,    addresstown,    icpstatus,    metertypenhh,
    distpricecat,    category , sunrise_eiep1.retailer,sunrise_registry.retailer as 'current retailer'
 
from
    sunrise_eiep1
    inner join sunrise_registry on  sunrise_registry.icp = sunrise_eiep1.icp
    where sunrise_registry.category = '2' 
    and  sunrise_eiep1.fixedvariable= 'V'
 
    
    group by icp;