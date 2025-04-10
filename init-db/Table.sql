-- Para esse script, não será necessário usar o create table, já que o postgres
-- reconhece o "POSTGRES_DB=teste_db" que está no .env como um comando de 
-- criação.

-- Criação da tabela Teste
CREATE TABLE IF NOT EXISTS teste (
    id SERIAL PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(20) NOT NULL
);

-- Populando a tabela teste
INSERT INTO teste (usuario, senha) VALUES 
('Lucas', 'senha123'),
('André', 'senha123');