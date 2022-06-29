
DECLARE @PROD VARCHAR(100), @EST VARCHAR(100), @CANT INT

SET @PROD = 'Pieza1'
SET @EST = 'Vendido'
SET @CANT = '2'

INSERT INTO VENTAS
(@PROD,@CANT,@EST)

EXEC Sp_Cant_productos @PROD,@EST,@CANT


-----------------SP------------------------

CREATE PROC Sp_Rest_Cant_Productos

@Producto varchar(100),
@Estado varchar(100),
@cantidad int

AS

IF @Estado = 'vendido'
BEGIN

UPDATE inventario
SET cantidad = cantidad - @cantidad
WHERE producto = @Producto

END





