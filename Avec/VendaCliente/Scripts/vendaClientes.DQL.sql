-- DQL --

-- Define o banco de dados que será utilizado --
USE vendasClientes;

-- Sinaliza o Termino da Instrução --
GO

-- CONSULTA de todas as tabelas --
SELECT * FROM Clientes;
SELECT * FROM vendasClientes;
SELECT * FROM Resultado;

-- Sinaliza o Termino da Instrução --
GO

-- JOIN entre a tabela Clientes e VendasClientes --
SELECT idVendas, Clientes.idClientes, Clientes.Nome, valorVenda FROM vendasClientes
INNER JOIN Clientes
ON vendasClientes.idClientes = Clientes.idClientes	