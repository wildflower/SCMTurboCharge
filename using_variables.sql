set @myvar="champion_eiep1";
set @s = concat("select count(*) from ",@myvar);
Prepare stmt from @s;
execute stmt;
deallocate prepare stmt;