-- Creo la base de datos si no existe
CREATE DATABASE IF NOT EXISTS proyecto_devops CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE proyecto_devops;

-- Creo la tabla de usuarios
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creo la tabla de productos
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserto datos iniciales en users
INSERT INTO users (username, email, password, role) VALUES 
('admin', 'admin@example.com', 'hashed_password_admin', 'admin'),
('user1', 'user1@example.com', 'hashed_password_user1', 'user');

-- Inserto datos iniciales en products
INSERT INTO products (name, description, price) VALUES
('Producto A', 'Descripción del producto A', 19.99),
('Producto B', 'Descripción del producto B', 29.99);
