CREATE DATABASE IF NOT EXISTS sistema_ti CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE sistema_ti;

CREATE TABLE IF NOT EXISTS chamados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_solicitante VARCHAR(100) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    tipo_problema VARCHAR(50) DEFAULT 'Suporte Técnico',
    prioridade VARCHAR(20) DEFAULT 'Normal',
    descricao TEXT NOT NULL,
    status VARCHAR(20) DEFAULT 'Aberto',
    tecnico_responsavel VARCHAR(100) DEFAULT NULL,
    imagem VARCHAR(255) DEFAULT NULL,
    data_abertura DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_conclusao DATETIME DEFAULT NULL
);
