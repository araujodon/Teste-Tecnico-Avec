-- DML --

-- Define o banco de dados que será utilizado --
USE vendasClientes;

-- Sinaliza o Termino da Instrução --
GO

-- Insere os valores na tabela Clientes --
INSERT INTO Clientes (Nome)
VALUES			('Jose')
				,('Felipe')
				,('Carlos')
				,('Marcos');

-- Sinaliza o Termino da Instrução --
GO

-- Insere os valores na tabela VendasClientes --
INSERT INTO vendasClientes(idClientes, valorVenda)
VALUES			(2, '20,0')
				,(2, '80,1')
				,(3, '80,1')
				,(3, '20,0')
				,(3, '90,0')
				,(3, '80,0');

-- Sinaliza o Termino da Instrução --
GO

-- Insere os valores na tabela Resultado
INSERT INTO Resultado( idClientes, idVendas)
VALUES			(2, 1)
				,(2, 2)
				,(3, 3)
				,(3, 4)
				,(3, 5)
				,(3, 6);

