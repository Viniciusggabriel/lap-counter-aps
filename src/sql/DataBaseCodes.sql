CREATE DATABASE APS;
USE APS;

CREATE TABLE TIME_CLOCK (
    ID_TIME INT PRIMARY KEY AUTO_INCREMENT,
    TIME_LAP TIME
);

DELIMITER //
CREATE PROCEDURE INSERT_DATA_TIME(
    IN P_LAP_TIME TIME
)
BEGIN
    INSERT INTO TIME_CLOCK (TIME_LAP) VALUES (P_LAP_TIME);
END //
DELIMITER ;

CALL INSERT_DATA_TIME('09:30:45');

SELECT * FROM TIME_CLOCK;

SELECT 
    *
FROM
    TIME_CLOCK
ORDER BY TIME_LAP DESC
LIMIT 0 , 2;