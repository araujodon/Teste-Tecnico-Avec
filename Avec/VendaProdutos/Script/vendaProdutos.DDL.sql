-- DDL --

-- Criação do Banco de Dados: VendaItensProdutos --
CREATE DATABASE vendasItensProdutos;

-- Sinaliza o Termino da Instrução --
GO

-- Define o banco de dados que será utilizado --
USE vendasItensProdutos;

-- Sinaliza o Termino da Instrução --
GO

-- Cria a Tabela Produtos --
CREATE TABLE Produtos(
	idProdutos		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200) UNIQUE NOT NULL,
	Valor			CHAR(100) NOT NULL
);

-- Sinaliza o Termino da Instrução --
GO

-- Cria a Tabela VendaItens --
CREATE TABLE vendaItens(
	idVenda			INT PRIMARY KEY IDENTITY,
	idProduto		INT FOREIGN KEY REFERENCES Produtos(IdProdutos),
	valorVenda		CHAR(100) NOT NULL
);

-- Sinaliza o Termino da Instrução --
GO

-- Cria a Tabela Resultado --
CREATE TABLE Resultado(
	idResultado		INT PRIMARY KEY IDENTITY,
	idVenda			INT FOREIGN KEY REFERENCES vendaItens(IdVenda),
	idProduto		INT FOREIGN KEY REFERENCES Produtos(IdProdutos),
);

ALTER TABLE Produtos ADD Descricao VARCHAR(300)
