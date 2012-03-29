select 
    champion_registry.icp,"small_red" as icon
    
from
    champion_registry 
where
    champion_registry.icpstatus = 2
group by icp