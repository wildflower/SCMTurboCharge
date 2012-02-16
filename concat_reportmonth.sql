select distinct concat(', sum(if(reportmonth=',reportmonth,'",1,0)) as `',reportmonth,'`') from champion_eiep1

