CREATE DATABASE CineMarvelDC;
USE CineMarvelDC;

CREATE TABLE vilao (
  idVilao INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  codinome VARCHAR(100),
  origem VARCHAR(50)
);

CREATE TABLE heroi (
  idHeroi INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  codinome VARCHAR(100),
  origem VARCHAR(50)
);

ALTER TABLE vilao ADD nivel_periculosidade INT;

CREATE TABLE confronto(
  idConfronto INT PRIMARY KEY,
  idHeroi INT,
  idVilao INT,
  local VARCHAR(100),
  resultado VARCHAR(50),
  FOREIGN KEY (idHeroi) REFERENCES heroi(idHeroi),
  FOREIGN KEY (idVilao) REFERENCES vilao(idVilao)
);
INSERT INTO vilao (idVilao, nome, codinome, origem, nivel_periculosidade)
VALUES (1, 'Arthur Fleck', 'Coringa', 'DC', 10);

SELECT * FROM vilao;

SELECT nome FROM heroi
WHERE codinome ; 


SELECT * FROM confronto
ORDER BY local DESC;

SELECT h.nome AS nome_heroi, v.nome AS nome_vilao, c.resultado
FROM confronto c
JOIN heroi h ON c.idHeroi = h.idHeroi
JOIN vilao v ON c.idVilao = v.idVilao;

SELECT DISTINCT v.nome
FROM vilao v
JOIN confronto c ON v.idVilao = c.idVilao
JOIN heroi h ON c.idHeroi = h.idHeroi
WHERE h.nome = 'Capitão América';

SELECT COUNT(*) AS total_viloes FROM vilao;

SELECT origem, AVG(nivel_periculosidade) AS media_periculosidade
FROM vilao
GROUP BY origem;

SELECT origem, COUNT(*) AS total_viloes
FROM vilao
GROUP BY origem
HAVING COUNT(*) > 2;