USE alx_book_store;
SELECT 
    COLUMN_NAME AS 'Column',
    COLUMN_TYPE AS 'Type',
    IS_NULLABLE AS 'Null',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE('alx_book_store')  -- هنا بنستخدم DATABASE() لأنها هتاخد الديتابيس اللي جي من argument mysql
    AND TABLE_NAME = 'books'
ORDER BY 
    ORDINAL_POSITION;