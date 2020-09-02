CREATE TABLE film_actor (
  actor_id SMALLINT UNSIGNED NOT NULL,
  film_id SMALLINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id, film_id)
)
ENGINE = INNODB,
CHARACTER SET utf8,
COLLATE utf8_general_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE film_actor 
  ADD INDEX idx_fk_film_id(film_id);

ALTER TABLE film_actor 
  ADD CONSTRAINT fk_film_actor_actor FOREIGN KEY (actor_id)
    REFERENCES actor(actor_id) ON UPDATE CASCADE;

ALTER TABLE film_actor 
  ADD CONSTRAINT fk_film_actor_film FOREIGN KEY (film_id)
    REFERENCES film(film_id) ON UPDATE CASCADE;