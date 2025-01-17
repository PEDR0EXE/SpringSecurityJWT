create TABLE Alumno(
    id SERIAL PRIMARY KEY,
    rut VARCHAR(50) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

CREATE TABLE Materia(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    alumno_id INT REFERENCES Alumno(id) ON DELETE CASCADE
);
INSERT INTO Alumno (rut, nombre, direccion) VALUES
('11111111-1', 'Juan Pérez', 'Calle Falsa 123'),
('22222222-2', 'María López', 'Avenida Siempre Viva 456'),
('33333333-3', 'Carlos Díaz', 'Boulevard Central 789'),
('44444444-4', 'Ana González', 'Plaza Mayor 101'),
('55555555-5', 'Pedro Herrera', 'Camino del Valle 202'),
('66666666-6', 'Lucía Morales', 'Paseo de las Flores 303'),
('77777777-7', 'Miguel Torres', 'Callejón Estrella 404'),
('88888888-8', 'Sofía Cruz', 'Ruta de los Vientos 505'),
('99999999-9', 'Diego Vega', 'Avenida del Sol 606'),
('12345678-0', 'Elena Rojas', 'Puente de la Luna 707'),
('87654321-0', 'Andrés Castillo', 'Barrio del Río 808'),
('11223344-5', 'Valentina Muñoz', 'Mirador de la Sierra 909'),
('55667788-9', 'Rodrigo Soto', 'Sendero de los Pinos 1010'),
('66778899-0', 'Camila Navarro', 'Esquina del Mar 1111'),
('99887766-5', 'Fernando Vargas', 'Jardines del Alba 1212');

INSERT INTO Materia (nombre, alumno_id) VALUES
('Matemáticas', 1),
('Física', 2),
('Química', 3),
('Historia', 4),
('Biología', 5),
('Arte', 6),
('Educación Física', 7),
('Informática', 8),
('Literatura', 9),
('Música', 10);