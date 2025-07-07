USE master;

RESTORE FILELISTONLY
FROM DISK = N'C:\backup\CajabambinoVacio.bak';

USE master;

RESTORE DATABASE RestauranteDBasePruebaVacio
FROM DISK = N'C:\backup\CajabambinoVacio.bak'
WITH
    MOVE N'RestauranteDBasePrueba' TO N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RestauranteDBasePruebaVacio_Data.mdf',
    MOVE N'RestauranteDBasePrueba_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RestauranteDBasePruebaVacio_Log.ldf',
    REPLACE,
    STATS = 10;
GO