mysql -u root -p

CREATE DATABASE proyecto;

USE proyecto;

CREATE TABLE IF NOT EXISTS `proyecto`.`clientes` (
  `cliente_id` INT NOT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `direccion` VARCHAR(50) NULL DEFAULT NULL,
  `pais` VARCHAR(50) NULL DEFAULT NULL,
  `telefono` INT NULL DEFAULT NULL,
  `ciudad` VARCHAR(15) NULL DEFAULT NULL,
  `Password_` VARCHAR(30) NULL DEFAULT NULL,
  `EstadoLog` INT NULL DEFAULT NULL,
  PRIMARY KEY (`cliente_id`));
  
  CREATE TABLE IF NOT EXISTS `proyecto`.`categorias` (
  `categoria_id` INT NOT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `descripcion` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`categoria_id`));
  
CREATE TABLE IF NOT EXISTS `proyecto`.`productos` (
  `producto_id` INT NOT NULL,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `sku` INT NULL DEFAULT NULL,
  `Precio` INT NULL DEFAULT NULL,
  `stock` INT NULL DEFAULT NULL,
  PRIMARY KEY (`producto_id`));
  
  CREATE TABLE IF NOT EXISTS `proyecto`.`ordenes` (
  `Orden_id` INT NOT NULL,
   `cliente_id` INT NOT NULL,
  `direccion_entrega` VARCHAR(50) NULL DEFAULT NULL,
  `Fecha` VARCHAR(10) NULL DEFAULT NULL,
  `Cantidad` VARCHAR(5) NULL DEFAULT NULL,
  `Estado` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`Orden_id`),
  INDEX `fk_ordenes_clientes_idx` (`Cliente_id` ASC) VISIBLE,
  CONSTRAINT `fk_ordenes_clientes`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `proyecto`.`clientes` (`cliente_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

  CREATE TABLE IF NOT EXISTS `proyecto`.`orden_productos` (
  `orden_id` INT NOT NULL,
  `producto_id` INT NOT NULL,
  `precio` DECIMAL(5,0) NULL DEFAULT NULL,
  PRIMARY KEY (`orden_id`),
  INDEX `fk_orden_productos_productos1_idx` (`producto_id` ASC) VISIBLE,
  CONSTRAINT `fk_orden_productos_ordenes1`
    FOREIGN KEY (`orden_id`)
    REFERENCES `proyecto`.`ordenes` (`Orden_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orden_productos_productos1`
    FOREIGN KEY (`producto_id`)
    REFERENCES `proyecto`.`productos` (`producto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
CREATE TABLE IF NOT EXISTS `proyecto`.`producto_categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `producto_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_producto_categoria_productos1_idx` (`producto_id` ASC) VISIBLE,
  INDEX `fk_producto_categoria_categorias1_idx` (`categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_producto_categoria_productos1`
    FOREIGN KEY (`producto_id`)
    REFERENCES `proyecto`.`productos` (`producto_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_categoria_categorias1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `proyecto`.`categorias` (`categoria_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
