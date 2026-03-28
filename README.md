# Ejemplo: Adición de un producto a una base de datos

Este repositorio contiene un ejemplo sencillo de **cómo insertar (agregar) un producto en una tabla de una base de datos** usando SQL.

## 1. Estructura de la tabla
## 2. adicion de produto en tabla tomar en cuenta

Ejemplo de tabla `productos` en MySQL:

```sql
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 2. Consulta SQL para agregar un producto

```sql
INSERT INTO productos (nombre, descripcion, precio, stock)
VALUES ('Laptop Lenovo', 'Laptop 16GB RAM, 512GB SSD', 850.00, 10);
```

## 3. Ejemplo usando Node.js y MySQL

### Instalación de dependencias

```bash
npm install mysql2
```

### Código JavaScript

```js
const mysql = require('mysql2');

const conexion = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'tienda'
});

const producto = {
  nombre: 'Mouse Gamer',
  descripcion: 'Mouse RGB de alta precisión',
  precio: 25.99,
  stock: 50
};

const sql = 'INSERT INTO productos (nombre, descripcion, precio, stock) VALUES (?, ?, ?, ?)';

conexion.query(sql, [producto.nombre, producto.descripcion, producto.precio, producto.stock], (error, resultado) => {
  if (error) {
    console.error('Error al insertar el producto:', error);
  } else {
    console.log('Producto agregado con ID:', resultado.insertId);
  }
});

conexion.end();
```

## 4. Notas

- Este ejemplo usa **MySQL**, pero la lógica es similar para PostgreSQL, SQL Server u otros motores.
- Usa consultas preparadas (`?`) para evitar **inyección SQL**.

---
Autor: Ejemplo educativo
