﻿CREATE 
VIEW sales_by_store
AS
	SELECT
	  CONCAT(`c`.`city`, _utf8mb3 ',', `cy`.`country`) AS `store`,
	  CONCAT(`m`.`first_name`, _utf8mb3 ' ', `m`.`last_name`) AS `manager`,
	  SUM(`p`.`amount`) AS `total_sales`
	FROM (((((((`payment` `p`
	  JOIN `rental` `r`
	    ON ((`p`.`rental_id` = `r`.`rental_id`)))
	  JOIN `inventory` `i`
	    ON ((`r`.`inventory_id` = `i`.`inventory_id`)))
	  JOIN `store` `s`
	    ON ((`i`.`store_id` = `s`.`store_id`)))
	  JOIN `address` `a`
	    ON ((`s`.`address_id` = `a`.`address_id`)))
	  JOIN `city` `c`
	    ON ((`a`.`city_id` = `c`.`city_id`)))
	  JOIN `country` `cy`
	    ON ((`c`.`country_id` = `cy`.`country_id`)))
	  JOIN `staff` `m`
	    ON ((`s`.`manager_staff_id` = `m`.`staff_id`)))
	GROUP BY `s`.`store_id`
	ORDER BY `cy`.`country`, `c`.`city`;