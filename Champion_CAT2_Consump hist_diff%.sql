select 
    champion_registry.icp,
    
sum(units*(1-abs(sign(left(reportmonth,4)-2005)))) as 'sum 05', 
sum(units*(1-abs(sign(left(reportmonth,4)-2006)))) as 'sum 06',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2006))))-sum(units*(1-abs(sign(left(reportmonth,4)-2005)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2005))))*100,0),'%') as 'DIFF 06_05',

sum(units*(1-abs(sign(left(reportmonth,4)-2007)))) as 'sum 07',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2007))))-sum(units*(1-abs(sign(left(reportmonth,4)-2006)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2006))))*100,0),'%') as 'DIFF 07_06',



sum(units*(1-abs(sign(left(reportmonth,4)-2008)))) as 'sum 08',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2008))))-sum(units*(1-abs(sign(left(reportmonth,4)-2007)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2007))))*100,0),'%') as 'DIFF 08_07',



sum(units*(1-abs(sign(left(reportmonth,4)-2009)))) as 'sum 09',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2009))))-sum(units*(1-abs(sign(left(reportmonth,4)-2008)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2008))))*100,0),'%') as 'DIFF 09_08',


sum(units*(1-abs(sign(left(reportmonth,4)-2010)))) as 'sum 10',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2010))))-sum(units*(1-abs(sign(left(reportmonth,4)-2009)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2009))))*100,0),'%') as 'DIFF 10_09',
 

sum(units*(1-abs(sign(left(reportmonth,4)-2011)))) as 'sum 11',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2010)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2010))))*100,0),'%') as 'DIFF 11_10',
concat(format((sum(units*(1-abs(sign(left(reportmonth,4)-2011))))-sum(units*(1-abs(sign(left(reportmonth,4)-2005)))))/sum(units*(1-abs(sign(left(reportmonth,4)-2005))))*100 ,0),'%')as 'DIFF 11_05',

sum(units*(1-abs(sign(left(reportmonth,4)-2012)))) as 'sum 12',

    
champion_registry.retailer as 'REG retailer',distpricecat, metercontact, addressuserref,    addressnumber,   
addressstreet,    addresstown,        icpstatus,    category,  metertypehhr,  
ami,  meterregister  


from
    champion_eiep1 inner join champion_registry on champion_registry.icp = champion_eiep1.icp
where
 

    fixedvariable = 'V' and champion_registry.category = '2' and icpstatus = '2' and  champion_registry.metertypehhr = 'N'
    group by  icp  
    
 