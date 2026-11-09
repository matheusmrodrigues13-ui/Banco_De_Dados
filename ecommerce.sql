2we3dxSELECT nome, cidade, estado
FROM clientes
WHERE estado = 'SP'
ORDER by nome

SELECT DISTINCT cidade
FROM clientes;

select * from produtos where preco <= 100

SELECT * FROM produtos WHERE preco != 300
SELECT * FROM produtos WHERE preco > 300
SELECT * FROM produtos WHERE preco < 300
SELECT * FROM produtos WHERE preco >= 120
SELECT * FROM produtos WHERE preco <= 120
SELECT * FROM produtos WHERE nome ='notebook dell' AND preco > 4000
WHERE preco BETWEEN 10 AND 100
WHERE nome LIKE 'GAMER%' (começa com M)
SELECT * FROM clientes WHERE telefone IS NULL
SELECT * FROM clientes
SELECT *FROM clientes WHERE NOT estado='SP'
WHERE estado IN ('SP','RJ','BH')
