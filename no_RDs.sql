create temporary table RD_status
SELECT icp, status , reportmonth
FROM `champion_eiep1`
WHERE fixedvariable = "V"
AND status = "RD"
AND reportmonth > "201101"
GROUP BY icp; 

SELECT 
    champion_registry.icp, champion_registry.metercontact, retailer
FROM
    champion_registry
        LEFT JOIN
    RD_status ON champion_registry.icp = RD_status.icp
WHERE
    RD_status.icp IS NULL and champion_registry.icpstatus = 2;
