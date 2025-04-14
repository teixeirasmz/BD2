use cadastro;
-- Sublingual DDL
show tables;
desc curso;
desc estudantes;
desc estudantecursa;

-- DDL - comandos de consulta 
select * from curso;
select nome,descricao from curso;
select nome, descricao from curso where nome like "S%";
select count(nome) from estudantes;

-- Consulta envolvendo 2 ou mais tabelas
select estudante.nome, curso.nome from estudante left join
estudantecursa on estudante.id = estudantecursa.idEstudante
join curso on estudantecursa.idcurso = curso.idcurso;



