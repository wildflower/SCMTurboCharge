
DROP PROCEDURE if exists usage_by_pricecode_sunrise;
delimiter //
CREATE PROCEDURE usage_by_pricecode_sunrise(IN IcpIn char(15)) 
begin

select concat("select concat( year(startdate),'-',month(startdate),'-01') as Date,",
    group_concat( distinct 
        concat("sum(case when pricecode ='",
        pricecode,
        "' then units else NULL end) as '",
        pricecode,
        "',")
    order by pricecode separator ''),
"sum(units) as 'Total' from sunrise_eiep1 where icp ='",IcpIn,"' group by year(startdate) , month(startdate)") statement into @my_param from sunrise_eiep1 where icp = IcpIn;
#select @my_param;
prepare bollocks from @my_param;
execute bollocks;
deallocate prepare bollocks;
end;

//

delimiter ;