-- Criação do banco de dados (se ainda não existir)
CREATE DATABASE IF NOT EXISTS `fsw-donalds`
    CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

-- Usar o banco de dados
USE `fsw-donalds`;

-- Tabela Restaurant
CREATE TABLE IF NOT EXISTS Restaurant (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    avatarImageUrl VARCHAR(255) NOT NULL,
    coverImageUrl VARCHAR(255) NOT NULL,
    createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela MenuCategory
CREATE TABLE IF NOT EXISTS MenuCategory (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(255) NOT NULL,
    restaurantId CHAR(36) NOT NULL,
    createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (restaurantId) REFERENCES Restaurant(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tabela Product
CREATE TABLE IF NOT EXISTS Product (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    imageUrl VARCHAR(255) NOT NULL,
    ingredients JSON NOT NULL,
    restaurantId CHAR(36) NOT NULL,
    menuCategoryId CHAR(36) NOT NULL,
    createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (restaurantId) REFERENCES Restaurant(id) ON DELETE CASCADE,
    FOREIGN KEY (menuCategoryId) REFERENCES MenuCategory(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserir dados na tabela Restaurant
INSERT INTO Restaurant (id, name, slug, description, avatarImageUrl, coverImageUrl)
VALUES (
    UUID(),
    'FSW Donalds',
    'fsw-donalds',
    'O melhor fast food do mundo',
    'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQvcNP9rHlEJu1vCY5kLqzjf29HKaeN78Z6pRy',
    'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQU3JZGQeTmvPeJLoyOjzNsMqFdxUI423nBl6b'
);

-- Obter o ID do restaurante inserido
SET @restaurantId = (SELECT id FROM Restaurant WHERE slug = 'fsw-donalds');

-- Inserir dados na tabela MenuCategory (Combos)
INSERT INTO MenuCategory (id, name, restaurantId)
VALUES (UUID(), 'Combos', @restaurantId);

-- Obter o ID da categoria Combos
SET @combosCategoryId = (SELECT id FROM MenuCategory WHERE name = 'Combos' AND restaurantId = @restaurantId);

-- Inserir produtos na categoria Combos
INSERT INTO Product (id, name, description, price, imageUrl, ingredients, restaurantId, menuCategoryId)
VALUES
    (UUID(), 'McOferta Média Big Mac Duplo', 'Quatro hambúrgueres (100% carne bovina), alface americana, queijo fatiado sabor cheddar, molho especial, cebola, picles e pão com gergilim, acompanhamento e bebida.', 39.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQaHB8tslkBUjlHSKiuseLm2hIFzVY0OtxEPnw', '["Pão com gergilim", "Hambúrguer de carne 100% bovina", "Alface americana", "Queijo fatiado sabor cheddar", "Molho especial", "Cebola", "Picles"]', @restaurantId, @combosCategoryId),
    (UUID(), 'Novo Brabo Melt Onion Rings', 'Dois hambúrgueres de carne 100% bovina, méquinese, a exclusiva maionese especial com sabor de carne defumada, onion rings, fatias de bacon, queijo processado sabor cheddar, o delicioso molho lácteo com queijo tipo cheddar tudo isso no pão tipo brioche trazendo uma explosão de sabores pros seus dias de glória! Acompanhamento e Bebida.', 41.5, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQeGQofnEPyQaHEV2WL8rGUs41oMICtYfNkphl', '["Pão tipo brioche", "Hambúrguer de carne 100% bovina", "Méquinese", "Maionese especial com sabor de carne defumada", "Onion rings", "Fatias de bacon", "Queijo processado sabor cheddar", "Molho lácteo com queijo tipo cheddar"]', @restaurantId, @combosCategoryId),
    (UUID(), 'McCrispy Chicken Elite', 'Composto por pão tipo brioche com batata, molho Honey&Fire, bacon em fatias, alface, tomate, queijo sabor cheddar e carne 100% de peito de frango, temperada e empanada, acompanhamento e bebida.', 39.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQr12aTqPo3SsGjBJCaM7yhxnbDlXeL5N9dckv', '["Pão tipo brioche", "Batata", "Molho Honey&Fire", "Bacon em fatias", "Alface", "Tomate", "Queijo sabor cheddar", "Carne 100% de peito de frango"]', @restaurantId, @combosCategoryId),
    (UUID(), 'Duplo Cheddar McMelt', 'Dois hambúrgueres (100% carne bovina), molho lácteo com queijo tipo cheddar, cebola ao molho shoyu e pão escuro com gergelim, acompanhamento e bebida.', 36.2, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQWdq0w8niS9XCLQu7Nb4jvBYZze16goaOqsKR', '["Pão escuro com gergelim", "Hambúrguer de carne 100% bovina", "Molho lácteo com queijo tipo cheddar", "Cebola ao molho shoyu"]', @restaurantId, @combosCategoryId);

-- Inserir dados na tabela MenuCategory (Lanches)
INSERT INTO MenuCategory (id, name, restaurantId)
VALUES (UUID(), 'Lanches', @restaurantId);

-- Obter o ID da categoria Lanches
SET @hamburguersCategoryId = (SELECT id FROM MenuCategory WHERE name = 'Lanches' AND restaurantId = @restaurantId);

-- Inserir produtos na categoria Lanches
INSERT INTO Product (id, name, description, price, imageUrl, ingredients, restaurantId, menuCategoryId)
VALUES
    (UUID(), 'Big Mac', 'Quatro hambúrgueres (100% carne bovina), alface americana, queijo fatiado sabor cheddar, molho especial, cebola, picles e pão com gergilim, acompanhamento e bebida.', 39.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQKfI6fivqActTvBGLXfQe4a8CJ6d3HiR7USPK', '["Pão com gergilim", "Hambúrguer de carne 100% bovina", "Alface americana", "Queijo fatiado sabor cheddar", "Molho especial", "Cebola", "Picles"]', @restaurantId, @hamburguersCategoryId),
    (UUID(), 'Duplo Quarterão', 'Dois hambúrgueres de carne 100% bovina, méquinese, a exclusiva maionese especial com sabor de carne defumada, onion rings, fatias de bacon, queijo processado sabor cheddar, o delicioso molho lácteo com queijo tipo cheddar tudo isso no pão tipo brioche trazendo uma explosão de sabores pros seus dias de glória! Acompanhamento e Bebida.', 41.5, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQ99rtECuYaDgmA4VujBU0wKn2ThXJvF3LHfyc', '["Pão tipo brioche", "Hambúrguer de carne 100% bovina", "Méquinese", "Maionese especial com sabor de carne defumada", "Onion rings", "Fatias de bacon", "Queijo processado sabor cheddar", "Molho lácteo com queijo tipo cheddar"]', @restaurantId, @hamburguersCategoryId),
    (UUID(), 'McMelt', 'Composto por pão tipo brioche com batata, molho Honey&Fire, bacon em fatias, alface, tomate, queijo sabor cheddar e carne 100% de peito de frango, temperada e empanada, acompanhamento e bebida.', 39.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQUY0VlDTmvPeJLoyOjzNsMqFdxUI423nBl6br', '["Pão tipo brioche", "Batata", "Molho Honey&Fire", "Bacon em fatias", "Alface", "Tomate", "Queijo sabor cheddar", "Carne 100% de peito de frango"]', @restaurantId, @hamburguersCategoryId),
    (UUID(), 'McNífico Bacon', 'Dois hambúrgueres (100% carne bovina), molho lácteo com queijo tipo cheddar, cebola ao molho shoyu e pão escuro com gergelim, acompanhamento e bebida.', 36.2, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQBBmifbjzEVXRoycAtrP9vH45bZ6WDl3QF0a1', '["Pão escuro com gergelim", "Hambúrguer de carne 100% bovina", "Molho lácteo com queijo tipo cheddar", "Cebola ao molho shoyu"]', @restaurantId, @hamburguersCategoryId);

-- Inserir dados na tabela MenuCategory (Fritas)
INSERT INTO MenuCategory (id, name, restaurantId)
VALUES (UUID(), 'Fritas', @restaurantId);

-- Obter o ID da categoria Fritas
SET @frenchFriesCategoryId = (SELECT id FROM MenuCategory WHERE name = 'Fritas' AND restaurantId = @restaurantId);

-- Inserir produtos na categoria Fritas
INSERT INTO Product (id, name, description, price, imageUrl, ingredients, restaurantId, menuCategoryId)
VALUES
    (UUID(), 'Fritas Grande', 'Batatas fritas crocantes e sequinhas. Vem bastante!', 10.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQNd3jSNrcJroaszwjUAlM6iSO5ZTx2HV70t31', '[]', @restaurantId, @frenchFriesCategoryId),
    (UUID(), 'Fritas Média', 'Batatas fritas crocantes e sequinhas. Vem uma média quantidade!', 9.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQ7Y6lv9tkc0L9oMIXZsFJtwnBh2KCz3y6uSW1', '[]', @restaurantId, @frenchFriesCategoryId),
    (UUID(), 'Fritas Pequena', 'Batatas fritas crocantes e sequinhas. Vem pouquinho (é bom pra sua dieta)!', 5.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQ5toOZxYa1oARJCUGh4EY3x8NjXHtvZ7lnVfw', '[]', @restaurantId, @frenchFriesCategoryId);

-- Inserir dados na tabela MenuCategory (Bebidas)
INSERT INTO MenuCategory (id, name, restaurantId)
VALUES (UUID(), 'Bebidas', @restaurantId);

-- Obter o ID da categoria Bebidas
SET @drinksCategoryId = (SELECT id FROM MenuCategory WHERE name = 'Bebidas' AND restaurantId = @restaurantId);

-- Inserir produtos na categoria Bebidas
INSERT INTO Product (id, name, description, price, imageUrl, ingredients, restaurantId, menuCategoryId)
VALUES
    (UUID(), 'Coca-cola', 'Coca-cola gelada para acompanhar seu lanche.', 5.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQJS1b33q29eEsh0CVmOywrqx1UPnJpRGcHN5v', '[]', @restaurantId, @drinksCategoryId),
    (UUID(), 'Fanta Laranja', 'Fanta Laranja gelada para acompanhar seu lanche.', 5.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQW7Kxm9gniS9XCLQu7Nb4jvBYZze16goaOqsK', '[]', @restaurantId, @drinksCategoryId),
    (UUID(), 'Água Mineral', 'A bebida favorita do Cristiano Ronaldo.', 2.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQ7i05S5tkc0L9oMIXZsFJtwnBh2KCz3y6uSW1', '[]', @restaurantId, @drinksCategoryId);

-- Inserir dados na tabela MenuCategory (Sobremesas)
INSERT INTO MenuCategory (id, name, restaurantId)
VALUES (UUID(), 'Sobremesas', @restaurantId);

-- Obter o ID da categoria Sobremesas
SET @desertsCategoryId = (SELECT id FROM MenuCategory WHERE name = 'Sobremesas' AND restaurantId = @restaurantId);

-- Inserir produtos na categoria Sobremesas
INSERT INTO Product (id, name, description, price, imageUrl, ingredients, restaurantId, menuCategoryId)
VALUES
    (UUID(), 'Casquinha de Baunilha', 'Casquinha de sorvete sabor baunilha.', 3.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQtfuQrAKkI75oJfPT0crZxvX82ui9qV3hLFdY', '[]', @restaurantId, @desertsCategoryId),
    (UUID(), 'Casquinha de Chocolate', 'Casquinha de sorvete sabor chocolate.', 3.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQBH21ijzEVXRoycAtrP9vH45bZ6WDl3QF0a1M', '[]', @restaurantId, @desertsCategoryId),
    (UUID(), 'Casquinha de Mista', 'Casquinha de sorvete sabor baunilha e chocolate.', 2.9, 'https://u9a6wmr3as.ufs.sh/f/jppBrbk0cChQ4rBrtULypXmR6JiWuhzS8ALjVkrF3yfatC7E', '[]', @restaurantId, @desertsCategoryId);