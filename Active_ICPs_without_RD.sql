/* Find Active ICPs that haven't had a RD since the reportmonth chosen
(they may have had a FL or ES since though) */

create temporary table RD_status
SELECT icp,
status , reportmonth
FROM `sunrise_eiep1`
WHERE fixedvariable = "V"
AND STATUS = "RD"
AND reportmonth > "201101"
GROUP BY icp; 
SELECT sunrise_registry.icp FROM sunrise_registry LEFT JOIN RD_status
ON sunrise_registry.icp = RD_status.icp
WHERE RD_status.icp IS NULL and sunrise_registry.icpstatus = 2;

select  sunrise_registry.icp from RD_status right join sunrise_registry using (icp) where icpstatus = 2 and RD_status.icp is NULL;
