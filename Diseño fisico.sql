mysql -u root -p

CREATE DATABASE proyecto;

USE proyecto;

CREATE TABLE IF NOT EXISTS Clientes ( 
	cliente_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(50),
	direccion VARCHAR(50),
    pais VARCHAR(50),
    telefono INT,
    ciudad VARCHAR(15),
    Password_ VARCHAR(30),
    EstadoLog INT
	);

CREATE TABLE IF NOT EXISTS Ordenes ( 
	Orden_id INT NOT NULL PRIMARY KEY,
	Cliente_id VARCHAR(50),
	direccion_entrega VARCHAR(50),
    Fecha VARCHAR(10),
    Cantidad VARCHAR(5),
    Estado VARCHAR(15)
	);
    
CREATE TABLE IF NOT EXISTS Productos ( 
	producto_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(50),
    sku INT,
    Precio INT,
    stock INT
	);
    
    CREATE TABLE IF NOT EXISTS Producto_categoria ( 
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	producto_id VARCHAR(10),
	categoria_id VARCHAR(10)
	);
    
    CREATE TABLE IF NOT EXISTS Orden_productos ( 
	orden_id INT NOT NULL PRIMARY KEY,
	producto_id VARCHAR(10),
	precio NUMERIC(5,0)
	);
    
    CREATE TABLE IF NOT EXISTS Categorias ( 
	categoria_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(50),
	descripcion VARCHAR(80)
   );
