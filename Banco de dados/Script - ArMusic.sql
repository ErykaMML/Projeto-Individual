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

CREATE TABLE votacao (
idvotacao INT PRIMARY KEY auto_increment,
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
('Clássica'),
('Rock'),
('Forró'),
('Sertanejo');

INSERT INTO votacao (fkusuario, fkgenero) VALUES
(1, 1),
(2, 3),
(3,5);

SELECT * FROM usuario;
SELECT * FROM genero;
SELECT * FROM votacao;
SELECT * FROM votacao;