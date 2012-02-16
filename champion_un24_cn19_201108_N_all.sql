SELECT * 
FROM  scm.champion_eiep1
where  
reportmonth >  '201107'  
and (pricecode = 'WA22' 
or pricecode = 'WA23')

order by icp

