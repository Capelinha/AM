-- Gerado por Oracle SQL Developer Data Modeler 18.2.0.179.0756
--   em:        2018-09-17 15:12:50 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



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
    twitter         VARCHAR2(30),
    linkdin         VARCHAR2(50),
    notas           VARCHAR2(1000),
    status          NUMBER(1) NOT NULL,
    n_amigos        NUMBER(5),
    fb_frequencia   NUMBER(1),
    n_seguidores    NUMBER(5),
    tw_frequencia   NUMBER(1),
    ld_frequencia   NUMBER(1),
    n_conexoes      NUMBER(5),
    youtube         VARCHAR2(50)
);

ALTER TABLE candidato
    ADD CONSTRAINT candidato_status_chk CHECK ( status BETWEEN 1 AND 3 );

ALTER TABLE candidato
    ADD CONSTRAINT candidato_fb_frequencia_chk CHECK ( fb_frequencia BETWEEN 1 AND 3 );

ALTER TABLE candidato
    ADD CONSTRAINT candidato_tw_frequencia_chk CHECK ( tw_frequencia BETWEEN 1 AND 3 );

ALTER TABLE candidato
    ADD CONSTRAINT candidato_lk_frequencia_chk CHECK ( ld_frequencia BETWEEN 1 AND 3 );

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
    id_candidato           NUMBER(5) NOT NULL,
    score                  NUMBER(5) NOT NULL
);

ALTER TABLE inscricao
    ADD CONSTRAINT inscricao_status_chk CHECK ( status BETWEEN 1 AND 7 );

ALTER TABLE inscricao ADD CONSTRAINT inscricao_pk PRIMARY KEY ( id_candidato,
                                                                id_vaga );

CREATE TABLE peso (
    id_peso        NUMBER(5) NOT NULL,
    facebook       NUMBER(5) NOT NULL,
    n_amigos       NUMBER(5) NOT NULL,
    twitter        NUMBER(5) NOT NULL,
    n_seguidores   NUMBER(5) NOT NULL,
    linkedin       NUMBER(5) NOT NULL,
    n_conexoes     NUMBER(5) NOT NULL,
    youtube        NUMBER(5) NOT NULL,
    id_vaga        NUMBER(5) NOT NULL
);

ALTER TABLE peso
    ADD CONSTRAINT peso_facebook_chk CHECK ( facebook BETWEEN 1 AND 5 );

ALTER TABLE peso
    ADD CONSTRAINT peso_n_amigos_chk CHECK ( n_amigos BETWEEN 1 AND 5 );

ALTER TABLE peso
    ADD CONSTRAINT peso_twitter_chk CHECK ( twitter BETWEEN 1 AND 5 );

ALTER TABLE peso
    ADD CONSTRAINT peso_n_seguidores_chk CHECK ( n_seguidores BETWEEN 1 AND 5 );

ALTER TABLE peso
    ADD CONSTRAINT peso_linkdin_chk CHECK ( linkedin BETWEEN 1 AND 5 );

ALTER TABLE peso
    ADD CONSTRAINT peso_youtube_chk CHECK ( youtube BETWEEN 1 AND 5 );

CREATE UNIQUE INDEX peso__idx ON
    peso (
        id_vaga
    ASC );

ALTER TABLE peso ADD CONSTRAINT pesos_pk PRIMARY KEY ( id_peso );

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
    id_vaga   NUMBER(5) NOT NULL,
    peso      NUMBER(5) NOT NULL
);

ALTER TABLE tag_vaga
    ADD CONSTRAINT tag_vaga_peso_chk CHECK ( peso BETWEEN 1 AND 5 );

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

ALTER TABLE tentativa
    ADD CONSTRAINT tentativa_status_chk CHECK ( status BETWEEN 1 AND 3 );

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
    id_prova     NUMBER(5) NOT NULL,
    id_vaga      NUMBER(5) NOT NULL,
    n_questoes   NUMBER(5) NOT NULL,
    peso         NUMBER(5) NOT NULL
);

ALTER TABLE vaga_prova
    ADD CONSTRAINT vaga_prova_peos_chk CHECK ( peso BETWEEN 1 AND 5 );

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

ALTER TABLE peso
    ADD CONSTRAINT vaga_peso_fk FOREIGN KEY ( id_vaga )
        REFERENCES vaga ( id_vaga );

ALTER TABLE tentativa
    ADD CONSTRAINT vaga_prova_tentativa_fk FOREIGN KEY ( id_vaga,
                                                         id_prova )
        REFERENCES vaga_prova ( id_vaga,
                                id_prova );

ALTER TABLE vaga_prova
    ADD CONSTRAINT vaga_vaga_prova_fk FOREIGN KEY ( id_vaga )
        REFERENCES vaga ( id_vaga );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            16
-- CREATE INDEX                             1
-- ALTER TABLE                             49
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
