CREATE DATABASE IF NOT EXISTS forum_souls_like;
USE forum_souls_like;

CREATE TABLE IF NOT EXISTS postagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_nome VARCHAR(50),
    titulo VARCHAR(255),
    conteudo TEXT,
    jogo VARCHAR(100),
);

CREATE TABLE IF NOT EXISTS comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    postagem_id INT,
    usuario_nome VARCHAR(50),
    conteudo TEXT,
    FOREIGN KEY (postagem_id) REFERENCES postagens(id) ON DELETE CASCADE
);
