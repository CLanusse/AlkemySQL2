-- 1
SELECT COUNT(*)
FROM inscripcion
WHERE nombre = "Mecánica";

-- 2
SELECT MIN(salario)
FROM profesor
WHERE fecha_nacimiento LIKE '198%';

-- 3, 4

SELECT pais.nombre, COUNT(*) as 'Pasajeros'
FROM pais INNER JOIN pasajero ON pais.idpais = pasajero.idpais 
GROUP BY pais.nombre;

-- suma todos los pagos
SELECT SUM(monto)
FROM pago

-- suma todos los pagos de 1 pasajero
SELECT ROUND(SUM(monto), 2)
FROM pago
WHERE idpasajero = 1

-- promedio de pagos de un pasajero
SELECT AVG(SUM(monto))
FROM pago
WHERE idpasajero = 1


