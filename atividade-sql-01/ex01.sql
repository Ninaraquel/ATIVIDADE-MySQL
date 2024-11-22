CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR (255) NOT NULL,
    cargo VARCHAR(100),
    data_contratacao DATE NOT NULL,
    salario DECIMAL (6,2) NOT NULL ,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES("João da Silva", "Desenvolvedor Backend", "2025-02-10", 4000),
      ("Maria Lima", "Analista de Suporte Técnico", "2025-01-15", 2000),
      ("Ana Pereira", "Especialista em Redes", "2025-03-20", 2500),
	  ("Pedro Leal", "Fullstack", "2025-03-12", 4500),
	  ("José Souza", "Desenvolvedor Frontend", "2025-01-20", 3500);
      
INSERT INTO tb_colaboradores(nome, cargo, data_contratacao, salario)
VALUES("Paulo Silveira", "Estagiário de suporte TI", "2025-02-10", 1800);
      
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 5000 WHERE id = 4;

select * from tb_colaboradores;