DROP DATABASE if exists ArMusic;
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
dataHora DATETIME default current_timestamp,
FOREIGN KEY (fkusuario) REFERENCES usuario (idusuario),
FOREIGN KEY (fkgenero) REFERENCES genero (idgenero)
);

INSERT INTO genero (genero) VALUES
('Pop'),
('R&B'),
('Funk'),
('Rock'),
('Sertanejo'),
('Rap'),
('Forró'),
('Clássica');


INSERT INTO usuario (email, nome, senha) VALUES
('emaildsahudasuh@gisahud', 'dasdasdas', 'semasdyasd'),
('sadsad@gisahud', 'dasidahsdas', 'semasdyasd'),
('dasdassdsa@gisahud', 'dasdasdas', 'sadlasdoa'),
('sdasdsa@gisahud', ',slksaoja', 'skaodk');

 INSERT INTO votos (fkusuario, fkgenero) VALUES
 (1, 1),
 (2, 3),
 (3,3);

SELECT * FROM usuario;
SELECT * FROM genero;
SELECT * FROM votos;

SELECT * FROM votos JOIN usuario ON idusuario = fkusuario WHERE fkusuario = 1;
    
SELECT * FROM votos JOIN usuario ON idusuario = fkusuario WHERE fkusuario = 2;

SELECT * FROM usuario JOIN votos ON idusuario = fkusuario
JOIN genero ON idgenero = fkgenero;


SELECT usuario.nome, genero.genero FROM usuario JOIN votos ON idusuario = fkusuario
JOIN genero ON idgenero = fkgenero;

SELECT count(fkgenero) AS `Total de votos` FROM votos;

    SELECT votos.fkgenero, count(fkgenero) AS 'Cada' FROM votos GROUP BY fkgenero;

