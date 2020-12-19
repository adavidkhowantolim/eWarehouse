DROP PROCEDURE IF EXISTS InsertDevices;

DELIMITER $$
CREATE PROCEDURE InsertDevices(PackagingZone INT, Printer INT, ForkliftStoring INT, ForkliftPicking INT, LoadingZone INT)
BEGIN
	DECLARE i INT;

	-- Menambah Device Packing Zone Sebanyak PackagingZone
	SET i = 1;

	PackagingZone_insert: LOOP
		IF i > PackagingZone THEN
			LEAVE PackagingZone_insert;
		END IF;

		INSERT INTO `Devices` (id, group_id) VALUES (i, 1);
		SET i = i + 1;
	END LOOP;

	-- Menambah Device Packing Zone Sebanyak Printer
	SET i = 1;

	Printer_insert: LOOP
		IF i > Printer THEN
			LEAVE Printer_insert;
		END IF;

		INSERT INTO `Devices` (id, group_id) VALUES (i, 2);
		SET i = i + 1;
	END LOOP;

	-- Menambah Device Forklift Storing Sebanyak ForkliftStoring
	SET i = 1;

	ForkliftStoring_insert: LOOP
		IF i > ForkliftStoring THEN
			LEAVE ForkliftStoring_insert;
		END IF;

		INSERT INTO `Devices` (id, group_id) VALUES (i, 3);
		SET i = i + 1;
	END LOOP;

	SET i = 1;

	-- Menambah Device Forklift Picking Sebanyak Forklifticking
	ForkliftPicking_insert: LOOP
		IF i > ForkliftPicking THEN
			LEAVE ForkliftPicking_insert;
		END IF;

		INSERT INTO `Devices` (id, group_id) VALUES (i, 4);
		SET i = i + 1;
	END LOOP;

	SET i = 1;

	-- Menambah Loading Zone Storing Sebanyak LoadingZone
	LoadingZone_insert: LOOP
		IF i > LoadingZone THEN
			LEAVE LoadingZone_insert;
		END IF;

		INSERT INTO `Devices` (id, group_id) VALUES (i, 5);
		SET i = i + 1;
	END LOOP;
END $$

DELIMITER ;