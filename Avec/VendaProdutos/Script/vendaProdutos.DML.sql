-- DML --

-- Define o banco de dados que será utilizado --
USE vendasItensProdutos;

-- Sinaliza o Termino da Instrução --
GO

-- Insere os valores na tabela Produtos --
INSERT INTO Produtos(Nome, Valor, Descricao)
VALUES					 ('Camisa','20,0', 'Camiseta Estampada')
						,('Regata', '60,1', 'Camiseta Basica')
						,('Blusa', '90,0', 'Blusa sem Touca')
						,('Shorts', '80,0', 'Shorts Rasgado');

-- Sinaliza o Termino da Instrução --
GO

-- Insere os valores na tabela VendaItens --
INSERT INTO vendaItens(idProduto, valorVenda)
VALUES		(1, '20,0')
			,(1, '20,0')
			,(2, '60,1')
			,(1, '20,0')
			,(2, '60,1')
			,(1, '20,0')
			,(3, '90,0')
			,(4, '80,0');

-- Sinaliza o Termino da Instrução --
GO

-- Insere os valores na tabela Resultado --
INSERT INTO Resultado(idVenda, idProduto)
VALUES		(1, 1)
			,(2, 1)
			,(3, 2)
			,(4, 1)
			,(5, 2)
			,(6, 1)
			,(7, 3)
			,(8, 4);