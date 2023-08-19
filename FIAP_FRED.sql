
/*CRIANDO TABELAS*/
CREATE TABLE ENDERECO (
    cep int PRIMARY KEY,
    rua varchar(100),
    uf char(2)
);
CREATE TABLE ALUNO(
    ra int,
    nome varchar (60) CONSTRAINT nn_nome NOT NULL,
    dt_nascimento date NOT NULL,
    cpf varchar(14),
    cep int REFERENCES ENDERECO(cep),
    CONSTRAINT uk_cpf UNIQUE(cpf),
    CONSTRAINT pk_ra PRIMARY KEY (ra)
);

-- APAGANDO TABELAS
--DROP TABLE ALUNO;
--DROP TABLE ENDERECO;
