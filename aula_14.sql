use lojaCalcados;
select * from estoque;

desc categoria;
insert into categoria(nome) values ("sapatênis");


select * from categoria;

select * from marca;
desc produtos;

insert into produto(nome, id_categoria, id_marca, 
descricao)
VALUES ("Sapatênis Casuaal Puma",5,3,"Sapatênis Casual Puma");

--AIVIDADE 1 - Letra b
select * from produto;

desc estoque;

insert into estoque(id_produto, tamanho, cor, preco, quantidade)
VALUES (11, 40, "Cinza", 219.90, 6), 
(11, 41, "Preto", 219.90, 4);

select * from estoque;

UPDATE produto SET descricao = "Tênis confortável com design moderno e amortecimento Air"
WHERE nome = "Tênis Nike Air Max";

select * from estoque order by id_produto;
select produto.nome, estoque.quantidade from produto join estoque
on estoque.id_produto = produto.id;
select * from estoque 
where quantidade<10;


--DELETE from produto where produto.id = 12;


select produto.nome, categoria.nome, marca.nome, estoque.preco
from produto join categoria on produto.id_categoria = categoria.id
join marca on produto.id_marca = marca.id
join estoque on produto.id = estoque.id_produto;

--ATIVIDADE 5
--ITEM B 
select produto.nome, SUM(estoque.quantidade) "Quantidade Total"
from produto join estoque on produto.id = estoque.id_produto
GROUP BY produto.nome;