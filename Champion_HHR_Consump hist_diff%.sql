select 
    champion_registry.icp,
    
format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2005)))),0) as 'sum 05', 
format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2006)))),0) as 'sum 06',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2006))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2005)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2005))))*100,0),'%') as 'DIFF 06_05',

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2007)))),0) as 'sum 07',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2007))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2006))))*100,0),'%') as 'DIFF 07_06',



format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2008)))),0) as 'sum 08',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2008))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2007))))*100,0),'%') as 'DIFF 08_07',



format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2009)))),0) as 'sum 09',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2009))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 09_08',


format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2010)))),0) as 'sum 10',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2010))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'DIFF 10_09',
 

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2011)))),0) as 'sum 11',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2011))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'DIFF 11_10',
concat(format((sum(kwh*(1-abs(sign(left(reportmonth,4)-2011))))-sum(kwh*(1-abs(sign(left(reportmonth,4)-2005)))))/sum(kwh*(1-abs(sign(left(reportmonth,4)-2005))))*100 ,0),'%')as 'DIFF 11_05',

format(sum(kwh*(1-abs(sign(left(reportmonth,4)-2012)))),0) as 'sum 12',

    
champion_registry.retailer as 'REG retailer',distpricecat, metercontact, addressuserref,    addressnumber,   
addressstreet,    addresstown,        icpstatus,    category,  metertypehhr,  
ami,  meterregister   


from
    champion_eiep3 inner join champion_registry on champion_registry.icp = champion_eiep3.icp
where
 

      icpstatus = '2' and  champion_registry.metertypehhr = 'Y'
    group by  icp  
    
 