 Select
 distinct concat(  '(sum(units*(1-abs(sign(reportmonth-',reportmonth,'))))-sum(units*(1-abs(sign(reportmonth-',reportmonth+1,')))))/sum(units*(1-abs(sign(reportmonth-',reportmonth+1,'))))*100 as \'',reportmonth,'\'') from sunrise_eiep1 order by reportmonth
