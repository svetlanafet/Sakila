CREATE TABLE actor (
  actor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE actor 
  ADD INDEX idx_actor_last_name(last_name);