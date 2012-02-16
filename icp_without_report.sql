 /* This will show a list of ICPs that have no records for the reportmonth chosen, meaning the retailer didn't send us any data for it - not even UBs */
 
 select tmp_reg.icp from (select distinct champion_registry.icp from champion_registry where champion_registry.icpstatus = 2) as tmp_reg  left join (select champion_eiep1.icp from champion_eiep1 where reportmonth = 201112) as tmp_eiep1 on tmp_reg.icp = tmp_eiep1.icp where tmp_eiep1.icp is NULL