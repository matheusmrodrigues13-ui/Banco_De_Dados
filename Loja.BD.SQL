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

INSERT INTO Departamento (nome, descricao, atendimento) VALUES
('Administrativo', 'Responsável pela gestão da empresa.', 'Presencial'),
('Estoque', 'Controle e organização dos produtos.', 'Home Office'),
('Vendas', 'Atendimento e vendas aos clientes.', 'Presencial');


INSERT INTO Funcionario (nome, email, telefone, funcao, id_departamento) VALUES
('João Silva', 'joao@gmail.com', 11987654321, 'Gerente', 1),
('Maria Oliveira', 'maria@gmail.com', 11987654322, 'Estoque', 2),
('Pedro Santos', 'pedro@gmail.com', 11987654323, 'Vendedor', 3);


INSERT INTO Projetos (nome, data_de_inicio, data_final, finalidade, sistemas_atribuidos) VALUES
('Sistema de Vendas', '2026-01-10', '2026-03-30', 'Melhorar o controle das vendas.', 'Sistema de Caixa'),
('Organização do Estoque', '2026-02-01', '2026-04-15', 'Organizar produtos e estoque.', 'Sistema de Estoque'),
('Atendimento Online', '2026-03-01', '2026-05-30', 'Melhorar o atendimento aos clientes.', 'Sistema de Atendimento');


INSERT INTO Func_Projetos (id_projeto, id_funcionario) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 3);