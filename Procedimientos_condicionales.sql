--Procedimientos iniciales

SELECT *, (subtotal + (subtotal*0.19))) Total FROM factura

-------

UPDATE S
SET DESCUENTO = ([PRECIO MANO OBRA]/2)
FROM SERVICIOS S
INNER JOIN (
SELECT FACTURA, SUM([PRECIO UNIDAD]) TOTAL FROM REPUESTOS
GROUP BY FACTURA
HAVING SUM([PRECIO UNIDAD]) > 3000000
) R ON R.FACTURA = S.FACTURA

-------

DECLARE @valormanoobra INT

IF @valormanoobra <= 5000000 and  @valormanoobra > 0

BEGIN 
SELECT 'ejecutar'
END
ELSE
SELECT 'ingrese valor de nuevo'

-------

DECLARE @presupuesto INT

SET @presupuesto = 50000000


IF (SELECT SUM(Compra) FROM total_cliente) > 50000000

BEGIN
UPDATE facturas
SET estado = 'emitir'
END
ELSE
UPDATE facturas
SET estado = 'sin emitir'
















