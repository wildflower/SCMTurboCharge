create temporary table RD_status
SELECT icp, status , reportmonth
FROM `champion_eiep1`
WHERE fixedvariable = "V"
AND status = "RD"
AND reportmonth > "201101"
GROUP BY icp; 

SELECT 
    champion_registry.icp
FROM
    champion_registry
        LEFT JOIN
    RD_status ON champion_registry.icp = RD_status.icp
WHERE
    RD_status.icp IS NULL and champion_registry.icpstatus = 2;

select 
    champion_registry.icp
from
    RD_status
        right join
    _registry USING (icp)
where
    icpstatus = 2 and RD_status.icp is NULL;