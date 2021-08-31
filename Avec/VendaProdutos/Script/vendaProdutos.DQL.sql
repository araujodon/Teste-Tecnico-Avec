-- DQL --

-- Define o banco de dados que será utilizado --
USE vendasItensProdutos;

-- Sinaliza o Termino da Instrução --
GO

-- CONSULTA de todas as tabelas --
SELECT * FROM vendaItens;
SELECT * FROM Produtos;
SELECT * FROM Resultado;

-- Sinaliza o Termino da Instrução --
GO

-- SELECT que traz somente a venda do item: Blusa --
SELECT idResultado, idVenda, idProduto FROM Resultado  WHERE [idVenda] = 7

-- Sinaliza o Termino da Instrução --
GO

-- JOIN entre a tabela VendaItens e Produtos --
SELECT idVenda, idProduto, Produtos.Nome, Descricao FROM vendaItens
INNER JOIN Produtos
ON vendaItens.idProduto = Produtos.idProdutos






