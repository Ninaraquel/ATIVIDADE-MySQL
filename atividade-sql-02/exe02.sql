CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome_categoria VARCHAR(100) NOT NULL,
    descrição VARCHAR(255)
    );
    
CREATE TABLE tb_pizzas (
    id  INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(100),
    preco DECIMAL(5,2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
    );
    
   
    
    INSERT INTO tb_categorias( nome_categoria, descrição) 
    VALUES("Doce", "pizzas doces com coberturas como chocolate, frutas, doce de leite, banana com canela, e mais"),
	      ("Vegetariana", "pizzas exclusivas  com ingredintes vegetais como bróccolis, cogumelos, champions, e muito mais"),
          ("Clássica", " pizza tradicional como calabresa, mussarela, marguerita e muitos mais"),
          ("Especiais", "Combinações exclusivas e sofisticadas com ingredientes premium, ideais para momentos especiais"),
          ("Carnes", "Pizzas com variedades de carne, como frango, calabresa e bacon, para os amantes de sabores intensos");
	
INSERT INTO tb_pizzas( nome, tamanho, preco, id_categoria) 
VALUES('Margherita', 'Média', 25.50, 3),
      ('Pepperoni', 'Grande', 50.00, 3),
      ('Frango com Catupiry', 'Média', 35.00, 5),
      ('Calabresa', 'Grande', 48.00, 3),
      ('Champion', 'Grande', 80.00, 2),
      ('Brigadeiro', 'Média', 22.50, 1),
      ('Romeu e Julieta', 'Pequena', 18.50, 1),
      ('Portuguesa', 'Grande', 45.00, 4);
      
          
	SELECT * fROM tb_pizzas WHERE PRECO > 45;
    
    SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
    
    SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
    
	SELECT p.id , p.nome , p.tamanho, p.preco
    FROM tb_pizzas p
    INNER JOIN tb_categorias c ON p.id_categoria = c.id;
    
    SELECT p.id , p.nome , p.tamanho, p.preco
    FROM tb_pizzas p
    INNER JOIN tb_categorias c ON p.id_categoria = c.id
	WHERE c.nome_categoria = "Doce";
    
   
  
   
   
    
    