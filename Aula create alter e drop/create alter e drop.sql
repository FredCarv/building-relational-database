--DROP TABLE ALUNO;
--DROP TABLE ENDERECO;
CREATE TABLE  ALUNO(
    RA INTEGER,
    NOME VARCHAR(60)
    );
    
CREATE TABLE ENDERECO(
    CEP INTEGER PRIMARY KEY,
    RUA VARCHAR(60),
    CIDADE VARCHAR(60)
    );
    
ALTER TABLE ESTUDANTE
    ADD CPF VARCHAR(15) NOT NULL;
    
ALTER TABLE ALUNO
    ADD CEP INTEGER;

--ADICIONANDO CHAVE PRIMARIA 
ALTER TABLE ALUNO
    ADD CONSTRAINT PK_ALUNO PRIMARY KEY(RA);

-- ADICIONANDO CHAVE ESTRANGEIRA
ALTER TABLE ESTUDANTE
    ADD CONSTRAINT FK_ALUNO_ENDERECO
    FOREIGN KEY (CEP) REFERENCES ENDERECO(CEP);
-- DESC: DESCRIBE(DEMONSTRA A ARQUITETURA DA TABELA)  


--REMOVENDO COLUNA
ALTER TABLE ALUNO
    DROP COLUMN CPF;

--MODIFICANDO COLUNA
ALTER TABLE ALUNO
    MODIFY NOME CHAR(20);
    
ALTER TABLE ALUNO
    RENAME COLUMN NOME TO NOME_COMPLETO;
    
--RENOMEANDO TABELA
RENAME ALUNO TO ESTUDANTE;

--DESC ALUNO;
--DESC ESTUDANTE;

DROP TABLE ENDERECO CASCADE CONSTRAINTS;

INSERT INTO ESTUDANTE (RA,NOME_COMPLETO, CPF)
    VALUES(1,'DIOGO', '22222');

INSERT INTO ESTUDANTE (RA,NOME_COMPLETO, CPF)
    VALUES(2,'MARCELO', '33333');
    
INSERT INTO ESTUDANTE (RA,NOME_COMPLETO, CPF)
    VALUES(3,'KAIQUE', '44444');

TRUNCATE TABLE ESTUDANTE;
   
INSERT INTO ESTUDANTE VALUES (2, 'MARIA', 00000);
SELECT * FROM ESTUDANTE;

UPDATE ESTUDANTE SET NOME_COMPLETO = 'LARISSA';

UPDATE ESTUDANTE SET NOME_COMPLETO = 'KAIQUE' WHERE RA = 1;

UPDATE ESTUDANTE SET NOME_COMPLETO = 'KAIQUE' WHERE RA >= 1;