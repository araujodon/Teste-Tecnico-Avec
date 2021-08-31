-- DDL --

-- Criação do Banco de Dados: VendasClientes --
CREATE DATABASE vendasClientes;

-- Sinaliza o Termino da Instrução --
GO

-- Define o banco de dados que será utilizado --
USE vendasClientes;

-- Sinaliza o Termino da Instrução --
GO

-- Cria a Tabela Clientes --
CREATE TABLE Clientes(
	idClientes			INT PRIMARY KEY IDENTITY,
	Nome				VARCHAR(200) UNIQUE NOT NULL,
);

-- Sinaliza o Termino da Instrução --
GO

-- Cria a Tabela VendasClientes
CREATE TABLE vendasClientes(
	idVendas			INT PRIMARY KEY IDENTITY,
	idClientes			INT FOREIGN KEY REFERENCES Clientes (idClientes),
	valorVenda			CHAR(100) NOT NULL
);

-- Sinaliza o Termino da Instrução --
GO

-- Cria a Tabela Resultado --
CREATE TABLE Resultado(
	idResultado			INT PRIMARY KEY IDENTITY,
	idVendas			INT FOREIGN KEY REFERENCES vendasClientes (idVendas),
	idClientes			INT FOREIGN KEY REFERENCES Clientes (idClientes),
);

