SELECT * 
FROM  scm.champion_eiep1
where 
(reportmonth = '201107'
or reportmonth = '201108'
or reportmonth = '201109'
or reportmonth = '201110'
or reportmonth = '201111'
or reportmonth = '201112'
)
and (pricecode = 'WA07' 
or pricecode = 'WA06')
order by icp