-- Crear tabla intermedia para la relación muchos a muchos entre DatosAfiliado y Areas
CREATE TABLE AfiliadoAreas (
    IdAfiliado INT,
    ObjetoAccion VARCHAR(255),
    FechaAsignacion DATE NOT NULL DEFAULT CURRENT_DATE,
    PRIMARY KEY (IdAfiliado, ObjetoAccion),
    FOREIGN KEY (IdAfiliado) REFERENCES DatosAfiliado(IdAfiliado),
    FOREIGN KEY (ObjetoAccion) REFERENCES Areas(ObjetoAccion)
);
 
-- Insertar datos en la tabla intermedia
INSERT INTO AfiliadoAreas (IdAfiliado, ObjetoAccion)
VALUES
(92094547, 'Afiliaciones'),
(92094547, 'Recaudo'),
(96429414, 'Aseguramiento'),
(96429414, 'Prestaciones económicas'),
(25515227, 'Prestaciones económicas'),
(25515227, 'Cartera'),
(94574123, 'Cartera'),
(94574123, 'Afiliaciones'),
(89211382, 'Recaudo'),
(89211382, 'Aseguramiento');
 
SELECT A.Nombres, AA.ObjetoAccion
FROM DatosAfiliado A
JOIN AfiliadoAreas AA ON A.IdAfiliado = AA.IdAfiliado
WHERE A.IdAfiliado = 92094547;
 
SELECT A.Nombres, AA.ObjetoAccion
FROM DatosAfiliado A
JOIN AfiliadoAreas AA ON A.IdAfiliado = AA.IdAfiliado
WHERE AA.ObjetoAccion = 'Afiliaciones';
 
 -- Tabla relación de muchos a muchos y el JOIN
 --procedimiento paramter
 
CREATE PROCEDURE GetEscuelaProfesor
	@DateRegister DATE,
    @DateModificacion DATE
AS
BEGIN
 
SELECT * from ProfesorEscuela
WHERE FechaAsignacion BETWEEN @DateRegister AND @DateModificacion --Y
 
END;