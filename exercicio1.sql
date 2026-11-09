INSERT INTO clientes (Nome, email, Cidade, Estado, Telefone) VALUES
('Pedro', 'pedro@gmail.com','Ribeirão Preto', 'SP', '16999990006'),
('Lucas', 'lucas@gmail.com', 'Curitiba', 'PR', '41999990007');

INSERT INTO produtos (Nome, Preco, Estoque) VALUES
('Notebook Dell', 4500, 10),
('Mouse Gamer', 150, 20);

SELECT * FROM clientes
WHERE Estado = 'SP'
ORDER BY Nome;

SELECT * FROM produtos
WHERE Preco BETWEEN 100 AND 1000;