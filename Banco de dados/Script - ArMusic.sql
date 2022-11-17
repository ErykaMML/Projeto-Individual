CREATE DATABASE ArMusic;
USE ArMusic;

CREATE TABLE usuario (
idusuario INT PRIMARY KEY auto_increment,
email VARCHAR (45),
nome VARCHAR (45),
senha VARCHAR (45)
);

CREATE TABLE genero (
idgenero INT PRIMARY KEY auto_increment,
genero VARCHAR (45)
);

CREATE TABLE votos (
idvotos INT PRIMARY KEY auto_increment,
fkusuario INT,
fkgenero INT,
FOREIGN KEY (fkusuario) REFERENCES usuario (idusuario),
FOREIGN KEY (fkgenero) REFERENCES genero (idgenero)
);

INSERT INTO usuario (email, nome, senha) VALUES
('eryka@gmail.com', 'Eryka', '123456'),
('dois@gmail.com', 'dois', '123456'),
('tres@gmail.com', 'tres', '123456'),
('quatro@gmail.com', 'quatro', '123456'),
('cinco@gmail.com', 'cinco', '123456');

INSERT INTO genero (genero) VALUES
('Pop'),
('R&B'),
('Funk'),
('Clássica');

INSERT INTO votos (fkusuario, fkgenero) VALUES
(1, 1),
(2, 3),
(3,4);

SELECT * FROM usuario;
SELECT * FROM genero;
SELECT * FROM votos;

SELECT * FROM votos JOIN usuario ON idvotos = fkusuario
JOIN genero ON idgenero = fkgenero;

SELECT * FROM usuario JOIN votos ON idusuario = fkusuario
JOIN genero ON idgenero = fkgenero;