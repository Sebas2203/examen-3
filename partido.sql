CREATE DATABASE encuestaPartidos
GO

USE encuestaPartidos
GO

--creación de tablas
CREATE TABLE encuesta
(
	id INT IDENTITY,
	nombre VARCHAR(50) NOT NULL,
	edad INT,
	correo VARCHAR(50) NOT NULL,

	CONSTRAINT pk_encuesta PRIMARY KEY (id)

)
GO

CREATE TABLE partido
(
	id INT IDENTITY (0,2),
	idEncuesta INT,
	partidoPolitico VARCHAR(10) NOT NULL

	CONSTRAINT pk_idPartido PRIMARY KEY (id),
	CONSTRAINT fk_idEncuesta FOREIGN KEY (idEncuesta) REFERENCES encuesta (id)
)
GO

--llenado de tablas 


CREATE PROCEDURE llenarEncuesta
	@nombre VARCHAR(50),
	@edad INT,
	@correo VARCHAR(50)
AS
	BEGIN
		INSERT INTO encuesta (nombre, edad, correo) VALUES (@nombre, @edad, @correo)
	END
GO

CREATE PROCEDURE llenarPartidos
	@idEncuesta INT,
	@partidoPolitico VARCHAR(10)
AS
	BEGIN
		INSERT INTO partido(idEncuesta, partidoPolitico) VALUES (@idEncuesta, @partidoPolitico)
	END
GO



EXEC llenarEncuesta 'Sebastian', 20, 'sebas@uh.com'

select*from encuesta


EXEC llenarPartidos 'PLN'
EXEC llenarPartidos 'PUSC'
EXEC llenarPartidos 'PAC'

SELECT*FROM partido

