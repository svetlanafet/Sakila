CREATE TABLE film_text (
  film_id SMALLINT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT DEFAULT NULL,
  PRIMARY KEY (film_id)
)
ENGINE = MYISAM,
CHARACTER SET utf8,
CHECKSUM = 0,
COLLATE utf8_general_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE film_text 
  ADD FULLTEXT INDEX idx_title_description(title, description);