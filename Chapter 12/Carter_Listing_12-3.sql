EXEC sp_addumpdevice  @devtype = 'disk', 
                      @logicalname = 'Chapter12Backup', 
                      @physicalname = 'C:\MSSQL\Backup\Chapter12Backup.bak' ;
GO


BACKUP DATABASE Chapter12
        TO  [Chapter12Backup]
        WITH  RETAINDAYS = 90
        , FORMAT
        , INIT
        , MEDIANAME = 'Chapter12'
        , NAME = 'Chapter12-Full Database Backup'
        , COMPRESSION ;