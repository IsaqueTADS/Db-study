CREATE DATABASE apiroomfy
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE apiroomfy;

-- Criar tabela de usuários
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  senha VARCHAR(255) NOT NULL,
  role ENUM('usuario', 'admin') NOT NULL
)DEFAULT CHARSET = utf8;

-- Criar tabela de salas
CREATE TABLE salas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  capacidade INT NOT NULL,
  localizacao VARCHAR(255) NOT NULL,
  disponivel BOOLEAN DEFAULT TRUE
)DEFAULT CHARSET = utf8;

-- Criar tabela de reservas
CREATE TABLE reservas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  sala_id INT NOT NULL,
  data_reserva DATE NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fim TIME NOT NULL,
  status ENUM('confirmada', 'cancelada') NOT NULL,
  CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  CONSTRAINT fk_sala_id FOREIGN KEY (sala_id) REFERENCES salas(id)
)DEFAULT CHARSET = utf8;







