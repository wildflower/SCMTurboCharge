CREATE  TABLE `scm`.`sunrise_eiep3` (
  `idsunrise_eiep3` INT UNSIGNED NOT NULL ,
  `icp` CHAR(15) NULL ,
  `fileid` VARCHAR(45) NULL ,
  `register` CHAR(15) NULL ,
  `readstatus` CHAR(1) NULL ,
  `readdate` DATE NULL ,
  `period` TINYINT NULL ,
  `kwh` FLOAT NULL ,
  `kvarh` FLOAT NULL ,
  `kvah` FLOAT NULL ,
  `reportmonth` CHAR(6) NULL ,
  PRIMARY KEY (`idsunrise_eiep3`) )
ENGINE = MyISAM;
