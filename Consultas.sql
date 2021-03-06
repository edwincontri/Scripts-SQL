--5. 

SELECT * FROM FACTURAS
WHERE TOTAL = 100000
AND [FECHA FACTURA] BETWEEN GETDATE() AND  GETDATE() - 60

--6.

SELECT TOP 100 R.REPUESTO, COUNT(REPUESTO) CUENTA_REP FROM REPUESTOS R
INNER JOIN FACTURAS F
ON F.FACTURA = R.FACTURA
WHERE F.[FECHA FACTURA] BETWEEN GETDATE() AND  GETDATE() - 30
GROUP BY R.REPUESTO
ORDER BY COUNT(REPUESTO) DESC

--7.

SELECT [DOCUMENTO CLIENTE] FROM FACTURAS F
INNER JOIN REPUESTOS R
ON F.FACTURA = R.FACTURA
WHERE R.REPUESTO = 100
AND R.CANTIDAD > 100
AND F.[FECHA FACTURA] BETWEEN GETDATE() AND  GETDATE() - 60

--8.

SELECT [PRIMER NOMBRE], [PRIMER APELLIDO], DOCUMENTO FROM DET_CLIENTE_FACTURA D
INNER JOIN FACTURAS F
ON F.[DOCUMENTO CLIENTE] = D.DOCUMENTO
INNER JOIN (
SELECT FACTURA, COUNT(MANTENIMIENTOS) CUENTA_MANT FROM MANTENIMIENTOS
GROUP BY FACTURA
HAVING COUNT(MANTENIMIENTOS) > 1
) M
ON M.FACTURA = F.FACTURA
WHERE F.[FECHA FACTURA] BETWEEN GETDATE() AND  GETDATE() - 30
