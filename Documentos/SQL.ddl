CREATE TABLE arquivo (
    id_arquivo     NUMBER(5) NOT NULL,
    arquivo        VARCHAR2(200) NOT NULL,
    nome           VARCHAR2(100) NOT NULL,
    extensao       VARCHAR2(10) NOT NULL,
    id_candidato   NUMBER(5) NOT NULL
);

ALTER TABLE arquivo ADD CONSTRAINT arquivo_pk PRIMARY KEY ( id_arquivo );

CREATE TABLE candidato (
    id_candidato    NUMBER(5) NOT NULL,
    nome            VARCHAR2(50) NOT NULL,
    sobrenome       VARCHAR2(50) NOT NULL,
    email           VARCHAR2(60) NOT NULL,
    senha           VARCHAR2(20) NOT NULL,
    telefone        VARCHAR2(16),
    celular         VARCHAR2(16),
    endereco        VARCHAR2(100),
    cidade          VARCHAR2(40),
    estado          VARCHAR2(20),
    pais            VARCHAR2(20),
    cep             VARCHAR2(20),
    data_nasc       DATE,
    anos_exp        NUMBER(2),
    cargo_atual     VARCHAR2(50),
    pret_salarial   NUMBER(6,2),
    facebook        VARCHAR2(50),
    twiter          VARCHAR2(30),
    linkdin         VARCHAR2(50),
    notas           VARCHAR2(1000),
    status          NUMBER(1) NOT NULL
);

ALTER TABLE candidato
    ADD CONSTRAINT candidato_status_chk CHECK ( status BETWEEN 1 AND 2 );

ALTER TABLE candidato ADD CONSTRAINT candidato_pk PRIMARY KEY ( id_candidato );

ALTER TABLE candidato ADD CONSTRAINT email_uq UNIQUE ( email );

CREATE TABLE departamento (
    id_departamento   NUMBER(5) NOT NULL,
    nome              VARCHAR2(50) NOT NULL
);

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( id_departamento );

CREATE TABLE entrevista (
    id_entrevista   NUMBER(5) NOT NULL,
    data            DATE NOT NULL,
    endereco        VARCHAR2(100) NOT NULL,
    cidade          VARCHAR2(40) NOT NULL,
    estado          VARCHAR2(20) NOT NULL,
    pais            VARCHAR2(20) NOT NULL,
    id_vaga         NUMBER(5) NOT NULL,
    id_candidato    NUMBER(5) NOT NULL
);

ALTER TABLE entrevista ADD CONSTRAINT entrevistas_pk PRIMARY KEY ( id_entrevista );

CREATE TABLE funcionario (
    id_funcionario   NUMBER(5) NOT NULL,
    nome             VARCHAR2(50) NOT NULL,
    sobrenome        VARCHAR2(50) NOT NULL,
    email            VARCHAR2(60) NOT NULL,
    senha            VARCHAR2(20) NOT NULL,
    tipo             NUMBER(1) NOT NULL
);

ALTER TABLE funcionario ADD CONSTRAINT funcionario_pk PRIMARY KEY ( id_funcionario );

CREATE TABLE inscricao (
    nota_compatibilidade   NUMBER(3),
    status                 NUMBER(1) NOT NULL,
    id_vaga                NUMBER(5) NOT NULL,
    id_candidato           NUMBER(5) NOT NULL
);

ALTER TABLE inscricao
    ADD CONSTRAINT inscricao_status_chk CHECK ( status BETWEEN 1 AND 7 );

ALTER TABLE inscricao ADD CONSTRAINT inscricao_pk PRIMARY KEY ( id_candidato,
                                                                id_vaga );

CREATE TABLE prova (
    id_prova            NUMBER(5) NOT NULL,
    titulo              VARCHAR2(100) NOT NULL,
    area_conhecimento   VARCHAR2(50) NOT NULL
);

ALTER TABLE prova ADD CONSTRAINT prova_pk PRIMARY KEY ( id_prova );

CREATE TABLE questao (
    id_questao      NUMBER(5) NOT NULL,
    titulo          VARCHAR2(100) NOT NULL,
    texto           VARCHAR2(500) NOT NULL,
    alternativa_a   VARCHAR2(300) NOT NULL,
    alternativa_b   VARCHAR2(300) NOT NULL,
    alternativa_c   VARCHAR2(300) NOT NULL,
    alternativa_d   VARCHAR2(300) NOT NULL,
    alternativa_e   VARCHAR2(300) NOT NULL,
    resposta        VARCHAR2(300) NOT NULL,
    status          NUMBER(1) NOT NULL,
    id_prova        NUMBER(5) NOT NULL
);

ALTER TABLE questao ADD CONSTRAINT questao_pk PRIMARY KEY ( id_questao );

CREATE TABLE resposta_questao (
    resposta       CHAR(1) NOT NULL,
    id_tentativa   NUMBER(5) NOT NULL,
    id_questao     NUMBER(5) NOT NULL
);

ALTER TABLE resposta_questao ADD CONSTRAINT resposta_questao_pk PRIMARY KEY ( id_questao,
                                                                              id_tentativa );

CREATE TABLE tag (
    id_tag   NUMBER(5) NOT NULL,
    tag      VARCHAR2(30) NOT NULL
);

ALTER TABLE tag ADD CONSTRAINT tag_pk PRIMARY KEY ( id_tag );

CREATE TABLE tag_candidato (
    id_tag         NUMBER(5) NOT NULL,
    id_candidato   NUMBER(5) NOT NULL
);

ALTER TABLE tag_candidato ADD CONSTRAINT tag_candidato_pk PRIMARY KEY ( id_candidato,
                                                                        id_tag );

CREATE TABLE tag_vaga (
    id_tag    NUMBER(5) NOT NULL,
    id_vaga   NUMBER(5) NOT NULL
);

ALTER TABLE tag_vaga ADD CONSTRAINT tag_vaga_pk PRIMARY KEY ( id_tag,
                                                              id_vaga );

CREATE TABLE tentativa (
    id_tentativa   NUMBER(5) NOT NULL,
    nota           NUMBER(2),
    inicio         DATE,
    fim            DATE,
    n_logins       NUMBER(5) NOT NULL,
    status         NUMBER(1) NOT NULL,
    id_vaga        NUMBER(5) NOT NULL,
    id_prova       NUMBER(5) NOT NULL,
    id_candidato   NUMBER(5) NOT NULL
);

ALTER TABLE tentativa ADD CONSTRAINT tentativa_pk PRIMARY KEY ( id_tentativa );

CREATE TABLE vaga (
    id_vaga           NUMBER(5) NOT NULL,
    titulo            VARCHAR2(100) NOT NULL,
    descricao         VARCHAR2(500) NOT NULL,
    quantidade        NUMBER(4) NOT NULL,
    area_atuacao      VARCHAR2(30) NOT NULL,
    data_desejada     DATE NOT NULL,
    salario           NUMBER(6,2),
    data_abertura     DATE,
    endereco          VARCHAR2(100) NOT NULL,
    cidade            VARCHAR2(40) NOT NULL,
    estado            VARCHAR2(20) NOT NULL,
    pais              VARCHAR2(20) NOT NULL,
    tempo_exp         NUMBER(3) NOT NULL,
    requisitos        VARCHAR2(500) NOT NULL,
    beneficios        VARCHAR2(500) NOT NULL,
    status            NUMBER(1) NOT NULL,
    id_departamento   NUMBER(5) NOT NULL
);

ALTER TABLE vaga
    ADD CONSTRAINT vaga_status_chk CHECK ( status BETWEEN 1 AND 4 );

ALTER TABLE vaga ADD CONSTRAINT vaga_pk PRIMARY KEY ( id_vaga );

CREATE TABLE vaga_prova (
    id_prova   NUMBER(5) NOT NULL,
    id_vaga    NUMBER(5) NOT NULL
);

ALTER TABLE vaga_prova ADD CONSTRAINT vagas_provas_pk PRIMARY KEY ( id_vaga,
                                                                    id_prova );

ALTER TABLE arquivo
    ADD CONSTRAINT candidato_arquivo_fk FOREIGN KEY ( id_candidato )
        REFERENCES candidato ( id_candidato );

ALTER TABLE inscricao
    ADD CONSTRAINT candidato_inscricao_fk FOREIGN KEY ( id_candidato )
        REFERENCES candidato ( id_candidato );

ALTER TABLE tag_candidato
    ADD CONSTRAINT candidato_tag_candidato_fk FOREIGN KEY ( id_candidato )
        REFERENCES candidato ( id_candidato );

ALTER TABLE tentativa
    ADD CONSTRAINT candidato_tentativa_fk FOREIGN KEY ( id_candidato )
        REFERENCES candidato ( id_candidato );

ALTER TABLE vaga
    ADD CONSTRAINT departamento_vaga_fk FOREIGN KEY ( id_departamento )
        REFERENCES departamento ( id_departamento );

ALTER TABLE entrevista
    ADD CONSTRAINT inscricao_entrevista_fk FOREIGN KEY ( id_candidato,
                                                         id_vaga )
        REFERENCES inscricao ( id_candidato,
                               id_vaga );

ALTER TABLE questao
    ADD CONSTRAINT prova_questao_fk FOREIGN KEY ( id_prova )
        REFERENCES prova ( id_prova );

ALTER TABLE vaga_prova
    ADD CONSTRAINT prova_vaga_prova_fk FOREIGN KEY ( id_prova )
        REFERENCES prova ( id_prova );

ALTER TABLE resposta_questao
    ADD CONSTRAINT questao_resosta_questao_fk FOREIGN KEY ( id_questao )
        REFERENCES questao ( id_questao );

ALTER TABLE tag_candidato
    ADD CONSTRAINT tag_tag_candidato_fk FOREIGN KEY ( id_tag )
        REFERENCES tag ( id_tag );

ALTER TABLE tag_vaga
    ADD CONSTRAINT tag_tag_vaga_fk FOREIGN KEY ( id_tag )
        REFERENCES tag ( id_tag );

ALTER TABLE resposta_questao
    ADD CONSTRAINT tentativa_resposta_questao_fk FOREIGN KEY ( id_tentativa )
        REFERENCES tentativa ( id_tentativa );

ALTER TABLE tag_vaga
    ADD CONSTRAINT vag_tag_vaga_fk FOREIGN KEY ( id_vaga )
        REFERENCES vaga ( id_vaga );

ALTER TABLE inscricao
    ADD CONSTRAINT vaga_inscricao_fk FOREIGN KEY ( id_vaga )
        REFERENCES vaga ( id_vaga );

ALTER TABLE tentativa
    ADD CONSTRAINT vaga_prova_tentativa_fk FOREIGN KEY ( id_vaga,
                                                         id_prova )
        REFERENCES vaga_prova ( id_vaga,
                                id_prova );

ALTER TABLE vaga_prova
    ADD CONSTRAINT vaga_vaga_prova_fk FOREIGN KEY ( id_vaga )
        REFERENCES vaga ( id_vaga );

