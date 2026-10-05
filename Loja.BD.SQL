CREATE DATABASE Lojinha;

USE Lojinha;

CREATE TABLE Departamento (
    nome VARCHAR(100),
    descricao VARCHAR(100),
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    atendimento ENUM('Presencial', 'Home Office')
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone INT,
    funcao ENUM('Gerente', 'Estoque', 'Caixa', 'Vendedor'),
    
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Projetos (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_de_inicio DATE,
    data_final DATE,
    finalidade VARCHAR(100),
    sistemas_atribuidos VARCHAR(100)
);

CREATE TABLE Func_Projetos (
    id_func_projetos INT AUTO_INCREMENT PRIMARY KEY,

    id_projeto INT,
    FOREIGN KEY (id_projeto) REFERENCES Projetos(id_projeto),

    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

