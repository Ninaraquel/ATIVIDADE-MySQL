CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR (255) NOT NULL,
    marca VARCHAR(255),
    preço DECIMAL(6,2) NOT NULL,
    quantidade INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (produto, marca, preço, quantidade)
VALUES("Smartphone", "Apple", 6500, 150),
      ("Notebook", " Dell", 3.899, 500),
      ("Fone de Ouvido Bluetooth", "Sony", 250, 450),
      ("TV", "Samsung", 3500, 150),
      ("Câmera Digital", "Canon", 1200, 300),
      ("Mouse", "Red Dragon", 350, 550),
      ("Monitor", "LG", 1500, 150),
      ("Galaxy s23", "Samsung", 5000, 350);
      
      SELECT * FROM tb_produtos WHERE preco > 500;
      SELECT * FROM tb_produtos WHERE preço < 500;
      
      UPDATE tb_produtos SET PREÇO = 3500 WHERE id = 2;
      
      select * FROM tb_produtos;