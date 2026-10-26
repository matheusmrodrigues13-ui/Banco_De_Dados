CREATE DATABASE Biblioteca;

USE Biblioteca;

-- Tabela dos leitores
CREATE TABLE Leitor (
    Id_Carteirinha INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

-- Tabela dos autores
CREATE TABLE Autor (
    Id_Autor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Livros VARCHAR(100),
    Email VARCHAR(100),
    Situacao BOOLEAN
);

-- Tabela dos livros
CREATE TABLE Livro (
    Id_Livro INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Id_Autor INT,

    FOREIGN KEY (Id_Autor) REFERENCES Autor(Id_Autor)
);

-- Tabela dos empréstimos
CREATE TABLE Emprestimo (
    Id_Emprestimos INT AUTO_INCREMENT PRIMARY KEY,
    Id_Carteirinha INT,
    Id_Livro INT,
    Data_Emprestimo DATE,
    Data_Devolucao DATE,

    FOREIGN KEY (Id_Carteirinha)
    REFERENCES Leitor(Id_Carteirinha),

    FOREIGN KEY (Id_Livro)
    REFERENCES Livro(Id_Livro)
);

-- Cadastra os leitores
INSERT INTO Leitor (Nome, Telefone, Email) VALUES
('TOM', '11999990001', 'tom@gmail.com'),
('AKIRA', '11999990002', 'akira@gmail.com'),
('Augusto', '11999990005', 'augusto@gmail.com'),
('Gabriel', '11999990004', 'gabriel@gmail.com'),
('MATHEUS', '11999990003', 'matheus@gmail.com');

-- Cadastra os autores
INSERT INTO Autor (Nome, Livros, Email, Situacao) VALUES
('TOM', 'Aventuras de Tom', 'tom@gmail.com', TRUE),
('AKIRA', 'O Mundo de Akira', 'akira@gmail.com', TRUE),
('Augusto', 'O solitário Augusto', 'augusto@gmail.com', TRUE),
('Gabriel', 'Tadinho do Gabriel', 'gabriel@gmail.com', TRUE),
('MATHEUS', 'O Caminho de Matheus', 'matheus@gmail.com', TRUE);

-- Cadastra os livros
INSERT INTO Livro (Nome, Id_Autor) VALUES
('Aventuras de Tom', 1),
('O Mundo de Akira', 2),
('O solitário Augusto', 3),
('Tadinho do Gabriel', 4),
('O Caminho de Matheus', 5);

-- Registra os empréstimos
INSERT INTO Emprestimo
(Id_Carteirinha, Id_Livro, Data_Emprestimo, Data_Devolucao) VALUES
(1, 1, '2026-10-26', NULL),
(2, 2, '2026-10-26', NULL),
(3, 3, '2026-10-26', NULL),
(4, 4, '2026-10-26', NULL),
(5, 5, '2026-10-26', NULL);

-- Registra a devolução do empréstimo
UPDATE Emprestimo
SET Data_Devolucao = '2026-10-27'
WHERE Id_Emprestimos = 1;

-- Cadastra outro autor
INSERT INTO Autor (Nome, Livros, Email, Situacao) VALUES
('Generico', 'Generico 2: A volta de quem nunca partiu', 'generico@gmail.com', TRUE);

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Autor
WHERE Nome = 'Generico';