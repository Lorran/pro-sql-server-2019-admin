-- Disable trigger above trigger
--Study and article.
EXEC sp_configure 'nested triggers';
EXEC sp_configure 'nested triggers', 1 ;
RECONFIGURE
