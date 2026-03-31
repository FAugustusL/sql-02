- Criando o Banco de Dados
CREATE DATABASE escola;
 
-- Criando uma tabela no banco de dados
CREATE TABLE nomepessoainstrutora(
    codigo_instrutor INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    endereco VARCHAR(500) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);
 
-- Criando outra tabela no banco de dados
CREATE TABLE nomedisciplina(
    codigo_disciplina INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    codigo_instrutor INT NOT NULL,
    FOREIGN KEY (codigo_instrutor)
        REFERENCES nomepessoainstrutora(codigo_disciplina)
);
 
-- Criando outra tabela no banco de dados
CREATE TABLE nomeestudante(
    codigo_estudante INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    endereco VARCHAR(500) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    codigo_disciplina INT NOT NULL,
    FOREIGN KEY (codigo_disciplina)
        REFERENCES nomedisciplina(codigo_estudante)
);
 
-- Inserir um dado na primeira tabela
INSERT INTO nomepessoainstrutora(
    codigo_instrutor,
    nome,
    endereco,
    telefone
)
VALUES(
    302250,
    'Augustus',
    'Rua das Flores',
    1133224455
);
 
-- Inserir outro dado na primeira tabela
INSERT INTO nomepessoainstrutora(
    codigo_instrutor,
    nome,
    endereco,
    telefone
)
VALUES(
    102387,
    'Ana Paula',
    'Av. Brasil ',
    1122337766
);
 
-- Inserir um dado na segunda tabela
INSERT INTO nomedisciplina(
    codigo_disciplina,
    nome,
    codigo_instrutor
)
VALUES(
    101,
    'Matemática',
);
 
-- Inserir outro dado na segunda tabela
INSERT INTO nomedisciplina(
    codigo_disciplina,
    nome,
    codigo_instrutor
)
VALUES(
    103,
    'Filosofia',
    302250
);
 
-- Inserir um dado na terceira tabela
INSERT INTO nomeestudante(
    codigo_estudante,
    nome,
    endereco,
    telefone,
    codigo_disciplina
)
VALUES(
    01,
    'Ana Claudia',
    'Rua Doutor Armando',
    1192737621,
    103
);
 
-- Inserir outro dado na terceira tabela
INSERT INTO nomeestudante(
    codigo_estudante,
    nome,
    endereco,
    telefone,
    codigo_disciplina
)
VALUES(
    02,
    'Acacio',
    'Rua das Rosas',
    1189765432,
    101
);
 
-- Alterar uma coluna de uma tabela ja criada
ALTER TABLE nomeestudante
MODIFY telefone BIGINT NOT NULL;
 
-- Alterando um dado específico de uma coluna
UPDATE nomepessoainstrutora
SET telefone = 1198765432
WHERE codigo_instrutor = 302250;
 
-- Deletar um dado da tabela (tente apagar sempre pela PK)
DELETE FROM nomeestudante
WHERE codigo_estudante = 302250;
 
-- Deletar a tabela do banco de dados
DROP TABLE nomedisciplina;
DROP TABLE nomepessoainstrutora;
DROP TABLE nomeestudante;
 
-- Deletar o banco de dados
DROP DATABASE escola;