CREATE DATABASE rede_social;
USE rede_social;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    inscritos VARCHAR(100) NOT NULL UNIQUE,
    bio VARCHAR(300) NOT NULL
);

CREATE TABLE post (
    id_post INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descricao VARCHAR(300) NOT NULL,
    data_de_publicacao DATETIME DEFAULT CURRENT_TIMESTAMP,

    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE hashtag (
    id_hashtag INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE,
    tema VARCHAR(50) NOT NULL,
    descricao VARCHAR(300) NOT NULL
);

CREATE TABLE post_hashtag (
    id_post_hashtag INT PRIMARY KEY AUTO_INCREMENT,

    id_post INT NOT NULL,
    FOREIGN KEY (id_post) REFERENCES post(id_post),
    id_hashtag INT NOT NULL,
    FOREIGN KEY (id_hashtag) REFERENCES hashtag(id_hashtag)
);
