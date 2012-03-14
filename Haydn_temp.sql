create temporary table test.tmp1 SELECT 
   sunrise_registry.icp
FROM
    scm.sunrise_registry        inner join    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
where
    (sunrise_eiep1.status = 'UB' and sunrise_eiep1.reportmonth = '201201');
    

create temporary table test.tmp2 
SELECT 
    sunrise_registry.icp
FROM
    scm.sunrise_registry        inner join    sunrise_eiep1 ON sunrise_registry.icp = sunrise_eiep1.icp
where
    
    ( sunrise_eiep1.status = 'UB' and sunrise_eiep1.reportmonth = '201110' )  ;  

select distinct icp from test.tmp1 inner join test.tmp1.icp = test.tmp2.icp