﻿CREATE TABLE film_category (
  film_id SMALLINT UNSIGNED NOT NULL,
  category_id TINYINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (film_id, category_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE film_category 
  ADD CONSTRAINT fk_film_category_category FOREIGN KEY (category_id)
    REFERENCES category(category_id) ON UPDATE CASCADE;

ALTER TABLE film_category 
  ADD CONSTRAINT fk_film_category_film FOREIGN KEY (film_id)
    REFERENCES film(film_id) ON UPDATE CASCADE;