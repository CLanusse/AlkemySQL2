-- 1
SELECT e.nombre, e.apellido, c.nombre
FROM estudiante e 
    INNER JOIN inscripcion i ON e.legajo = i.ESTUDIANTE_legajo
    INNER JOIN curso c ON i.CURSO_codigo = c.codigo;

-- 2
SELECT e.nombre, e.apellido, c.nombre
FROM estudiante e 
    INNER JOIN inscripcion i ON e.legajo = i.ESTUDIANTE_legajo
    INNER JOIN curso c ON i.CURSO_codigo = c.codigo
    ORDER BY c.nombre;

-- 3
SELECT p.nombre, p.apellido, c.nombre 
FROM profesor p INNER JOIN curso c ON p.id = c.PROFESOR_id;

-- 4
SELECT p.nombre, p.apellido, c.nombre 
FROM profesor p INNER JOIN curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre;

-- 5
SELECT curso.nombre, curso.cupo - COUNT(*) as "Cupo disponible"
from curso INNER JOIN inscripcion on curso.codigo = inscripcion.CURSO_codigo
GROUP BY curso.codigo

-- 6
SELECT curso.nombre, curso.cupo - COUNT(*) as "Cupo disponible"
from curso INNER JOIN inscripcion on curso.codigo = inscripcion.CURSO_codigo
GROUP BY curso.codigo
HAVING curso.cupo - COUNT(*) < 20
