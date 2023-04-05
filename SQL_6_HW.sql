CREATE DATABASE HW_6;
USE HW_6;

DROP FUNCTION IF EXISTS secs_to_time;

CREATE FUNCTION secs_to_time (@secs AS INT)
RETURNS VARCHAR(20)
	BEGIN
		DECLARE @mins INT;
        DECLARE @hours INT;
        DECLARE @days INT;
		SET @days = @secs / (60 * 60 * 24);
		SET @secs = @secs - @days * (60 * 60 * 24);
		SET @hours = @secs / (60 * 60);
		SET @secs = @secs - @hours * (60 * 60);
		SET @mins = @secs / 60;
		SET @secs = @secs - @mins * 60;
		RETURN CONCAT_WS( ':', LEFT(CHAR(@days), 2), LEFT(CHAR(@hours), 2), LEFT(CHAR(@mins), 2), LEFT(CHAR(@secs), 2));
	END;
	
CREATE PROCEDURE even_numbers ()
BEGIN
	DECLARE i INT DEFAULT 10;
	REPEAT
		IF(i % 2 = 1) THEN
			SELECT NULL;
			ELSE SELECT i;
		END IF;
        SET i = i - 1;
	UNTIL i <= 0
	END REPEAT;
END;
