CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
    id BIGINT AUTO_INCREMENT,
    matricula INT NOT NULL,
    nome VARCHAR(255),
    nota DECIMAL(4,2) NOT NULL,
    turma VARCHAR (255),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(matricula, nome, nota, turma)
VALUES("5213", "Pedro", 8.5, "77"),
      ("5214", " João", 8.0, "78"),
      ("5215", "Sandra", 7.0, "78"),
      ("5216", "Claudia", 8.5, "77"),
      ("5217", "Ana", 9.5, "77"),
      ("5218", "Lucas", 7.5, "77"),
      ("5219", "Marcelo", 6.0, "78"),
      ("5220", "Marcos", 9.0, "78");
      
      SELECT * FROM tb_alunos WHERE nota > 7;
      SELECT * FROM tb_alunos WHERE nota < 7;
      
      UPDATE tb_alunos SET nota = 10.0 WHERE id = 3;
      
      SELECT * FROM tb_alunos;