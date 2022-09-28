mysql -u root -p

CREATE DATABASE proyecto;

USE proyecto;

CREATE TABLE IF NOT EXISTS Clientes ( 
	cliente_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(50),
	direccion VARCHAR(50),
    pais VARCHAR(10),
    telefono VARCHAR(15),
    ciudad VARCHAR(15),
    Password VARCHAR(30),
    EstadoLog VARCHAR(1)
	);

CREATE TABLE IF NOT EXISTS Ordenes ( 
	Orden_id INT NOT NULL PRIMARY KEY,
	Cliente_id VARCHAR(50),
	direccion_entrega VARCHAR(50),
    Fecha VARCHAR(10),
    Cantidad VARCHAR(5),
    Estado VARCHAR(15)
	);
    
CREATE TABLE IF NOT EXISTS Producto ( 
	producto_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(50),
	categoria VARCHAR(20),
    sku VARCHAR(10),
    Precio VARCHAR(15),
    stock VARCHAR(5)
	);
    
CREATE TABLE IF NOT EXISTS Vendedor ( 
	vendedor_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(50),
	direccion VARCHAR(50),
    email VARCHAR(15)
	);
    
CREATE TABLE IF NOT EXISTS Producto_vendedor ( 
	id INT NOT NULL PRIMARY KEY,
	producto_id VARCHAR(10),
	vendedor_id VARCHAR(10)
	);
    
    CREATE TABLE IF NOT EXISTS Producto_categoria ( 
	id INT NOT NULL PRIMARY KEY,
	producto_id VARCHAR(10),
	categoria_id VARCHAR(10)
	);
