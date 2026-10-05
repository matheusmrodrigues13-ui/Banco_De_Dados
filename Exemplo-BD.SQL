-- Matheus Magalhães Rodrigues --
CREATE DATABASE loja_virtual;
USE loja_virtual;
CREATE TABLE clientes (
id_cliente INT auto_increment PRIMARY KEY,
nome VARCHAR(100),
email varchar(100),
telefone varchar(100),
data_cadastro date
);