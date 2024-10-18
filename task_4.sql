SELECT 
    T.TABLE_NAME AS 'Table',
    C.COLUMN_NAME AS 'Field',
    C.COLUMN_TYPE AS 'Type',
    C.IS_NULLABLE AS 'Null',
    C.COLUMN_KEY AS 'Key',
    C.COLUMN_DEFAULT AS 'Default',
    C.EXTRA AS 'Extra'
FROM 
    information_schema.tables T
JOIN 
    information_schema.columns C 
ON 
    T.TABLE_NAME = C.TABLE_NAME
WHERE 
    T.TABLE_SCHEMA = 'alx_book_store'
    AND T.TABLE_NAME = 'books';
SET @table_name = 'books';

SET @sql = CONCAT('SHOW CREATE TABLE ', @table_name);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
