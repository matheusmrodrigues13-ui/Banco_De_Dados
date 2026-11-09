-- Cria o banco de dados
CREATE DATABASE Loja_Exercicio;

USE Loja_Exercicio;

-- Tabela dos clientes
CREATE TABLE clientes_exercicio (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Cidade VARCHAR(100),
    Estado VARCHAR(2),
    Telefone VARCHAR(20)
);

-- Tabela dos produtos
CREATE TABLE produtos_exercicio (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2),
    Estoque INT
);

-- Tabela dos usuários
CREATE TABLE usuarios_exercicio (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Senha VARCHAR(100)
);

-- Tabela das intregas
CREATE TABLE entrega (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome_do_entregador VARCHAR(100),
    Empresa VARCHAR(100),
    Senha_da_entrega VARCHAR(100)
);

INSERT INTO clientes_exercicio (Nome, Cidade, Estado, Telefone) VALUES
('Matheus', 'Mococa', 'SP', '19999990001'),
('Gabriel', 'São Paulo', 'SP', '19999990002'),
('Akira', 'Rio de Janeiro', 'RJ', '21999990003'),
('Tom', 'Campinas', 'SP', '19999990004'),
('Augusto', 'Belo Horizonte', 'MG', '31999990005');

INSERT INTO produtos_exercicio (Nome, Preco, Estoque) VALUES
('Notebook Dell', 4500, 10),
('Mouse Gamer', 150, 20),
('Teclado Mecanico', 350, 15),
('Monitor', 950, 8),
('Headset', 80, 30);

INSERT INTO entrega (Nome_do_entregador, Empresa, Senha_da_entrega) VALUES
('Natália', 'Sunny_Brinquedos', 10),
('Patricia', 'PPa_Entregas', 20),
('Walquíria', 'WWE_BA', 15),
('Beatriz', 'LuLu_Sports', 8),
('Nicoly', 'Dell', 30);

INSERT INTO clientes_exercicio (Nome, Cidade, Estado, Telefone) VALUES
('Pedro', 'Ribeirão Preto', 'SP', '16999990006'),
('Lucas', 'Curitiba', 'PR', '41999990007');

INSERT INTO usuarios_exercicio (Nome, Email, Senha) VALUES
('João', 'joao@gmail.com', '123456'),
('Maria', 'maria@gmail.com', '654321');  

INSERT INTO usuarios_exercicio (Nome, Email, Senha) VALUES
('Generico', 'generico@gmail.com', 'Mrm17052010');

SET SQL_SAFE_UPDATES = 0;

DELETE FROM usuarios_exercicio
WHERE Nome = 'Generico';

UPDATE produtos_exercicio
SET Estoque = 20
WHERE Id = 1;

SELECT * FROM clientes_exercicio
WHERE Estado = 'SP'
ORDER BY Nome;

SELECT * FROM produtos_exercicio
WHERE Preco BETWEEN 100 AND 1000;