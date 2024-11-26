CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR (100) NOT NULL,
    descricao VARCHAR (255),
    PRIMARY KEY(id)
);

INSERT INTO tb_classes (nome, descricao)
VALUES
    ('Guerreiro', 'Classe focada em combate físico e defesa. Usa espadas e escudos.'),
    ('Mago', 'Classe especializada em magia e feitiçaria, com alto poder de ataque mágico.'),
    ('Arqueiro', 'Classe habilidosa no uso de arcos e flechas, com ataque à distância e alta agilidade.'),
    ('Ladino', 'Classe furtiva, especialista em furtos e ataques rápidos. Usa adagas e se especializa em evasão.'),
    ('Paladino', 'Classe de combate corpo a corpo com habilidades de cura e proteção. Usa espada e escudo.');
    
    select* from tb_classes;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,  
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    defesa INT NOT NULL,
    ataque INT NOT NULL,
    classe_id BIGINT,
    PRIMARY KEY (id),  
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)  
);

INSERT INTO tb_personagens (nome, nivel, defesa, ataque, classe_id) 
VALUES('Arthas', 50, 300, 400, 1),   -- Guerreiro
      ('Jaina', 45, 150, 600, 2),    -- Mago
      ('Sylvanas', 48, 200, 500, 3), -- Arqueiro
      ('Valeera', 47, 180, 450, 4),  -- Ladino
      ('Uther', 52, 350, 450, 5),    -- Paladino
	  ('Grom', 40, 280, 380, 1),     -- Guerreiro
      ('Kael', 44, 140, 580, 2),     -- Mago
      ('Legolas', 47, 190, 490, 3);  -- Arqueiro
 
update tb_personagens
SET ataque = CASE
               WHEN id = 1 THEN 3000
               WHEN id = 2 THEN 2000
                WHEN id = 3 THEN 1000
             END,
	defesa = CASE
               WHEN id = 1 THEN 1000
               WHEN id = 2 THEN 1500
               WHEN id = 3 THEN 2000
               END
WHERE id IN (1, 2, 3);   

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%l%";

SELECT p.id, p.nome, p.nivel, p.defesa, p.ataque, c.nome, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.id , p.nome , p.nivel, p.defesa, p.ataque, c.nome, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
