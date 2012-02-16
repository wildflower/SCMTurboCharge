SELECT * 
FROM  scm.champion_eiep1
where 
(reportmonth = '201108'
or reportmonth = '201109'
or reportmonth = '201110'
or reportmonth = '201111'
or reportmonth = '201112'
)
and (pricecode = 'WA07' 
or pricecode = 'WA06'
or pricecode = 'WA26'
or pricecode = 'WA27'
)
order by icp