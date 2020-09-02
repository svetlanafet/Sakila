﻿CREATE TABLE country (
  country_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  country VARCHAR(50) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (country_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci,
ROW_FORMAT = DYNAMIC;