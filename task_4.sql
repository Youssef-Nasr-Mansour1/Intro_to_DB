SELECT 
    CONCAT('SHOW CREATE TABLE ', 'books') AS 'Query'
INTO @sql_query;

PREPARE stmt FROM @sql_query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
