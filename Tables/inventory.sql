﻿CREATE TABLE inventory (
  inventory_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  film_id SMALLINT UNSIGNED NOT NULL,
  store_id TINYINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (inventory_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE inventory 
  ADD INDEX idx_fk_film_id(film_id);

ALTER TABLE inventory 
  ADD INDEX idx_store_id_film_id(store_id, film_id);

ALTER TABLE inventory 
  ADD CONSTRAINT fk_inventory_film FOREIGN KEY (film_id)
    REFERENCES film(film_id) ON UPDATE CASCADE;

ALTER TABLE inventory 
  ADD CONSTRAINT fk_inventory_store FOREIGN KEY (store_id)
    REFERENCES store(store_id) ON UPDATE CASCADE;