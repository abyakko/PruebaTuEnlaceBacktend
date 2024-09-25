
# Backend Project - PHP, Laravel, MySQL

Este proyecto es una aplicación backend construida con **Laravel** (framework de PHP) y utiliza **MySQL** como base de datos. Proporciona una API que interactúa con los datos de productos y búsquedas, y es consumida por el frontend.

## Despliegue en la web

No se puso cargar la api ala web



## Tecnologías Utilizadas

- **PHP 8.x**: Lenguaje de programación utilizado en el desarrollo del backend.
- **Laravel 10**: Framework de PHP que facilita la construcción de aplicaciones web robustas y escalables.
- **MySQL**: Sistema de gestión de bases de datos relacional utilizado para almacenar datos de productos y búsquedas.
- **Composer**: Usado como gestor de dependencias para Laravel y PHP.
- **npm & Vite**: En el frontend, se usaron para empaquetar los archivos y gestionar las dependencias.
- **Vue Router**: En el frontend se utilizó para la navegación entre páginas.
- **Axios**: Cliente HTTP utilizado para la comunicación entre el frontend y backend.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:

- [PHP 8.x](https://www.php.net/downloads)
- [Composer](https://getcomposer.org/)
- [MySQL](https://dev.mysql.com/downloads/installer/)
- [Node.js y npm](https://nodejs.org/) (para las herramientas del frontend)

## Instrucciones de Instalación

1. Clona el repositorio en tu máquina local:

```bash
git clone https://github.com/abyakko/PruebaTuEnlaceBacktend.git
```

2. Accede al directorio del proyecto:

```bash
cd PruebaTuEnlaceBacktend
```

3. Instala las dependencias de PHP utilizando Composer:

```bash
composer install
```

4. Crea un archivo de entorno `.env` copiando el ejemplo provisto:

```bash
cp .env.example .env
```

5. Configura tu archivo `.env` con las credenciales de tu base de datos MySQL:

```dotenv
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=productostuenlace
DB_USERNAME=tu_usuario
DB_PASSWORD=tu_contraseña
```

6. Cra una base de datos en tu mysql con el nombre de:
```bash
productostuenlace
```

7. carga el archivo productostuenlace.sql en la base de datos ue creaste


8. Inicia el servidor de desarrollo de Laravel:

```bash
php artisan serve
```

9. Ahora, la API estará corriendo en:

```
http://localhost:8000
```

## Consulta SQL de Ejemplo

Aquí tienes un ejemplo de una consulta SQL utilizada para obtener los 5 productos más buscados en la base de datos:

```sql
SELECT p.id, p.title, COUNT(s.product_id) AS search_count FROM products p JOIN searches s ON p.id = s.product_id GROUP BY p.id, p.title ORDER BY search_count DESC LIMIT 5;
```

Esta consulta te dará los nombres de los productos junto con el número total de búsquedas, ordenados por las más populares.

## Modelo de Base de Datos

El proyecto utiliza una base de datos MySQL con la siguiente estructura de tablas:

1. **products**: Almacena los detalles de los productos.
   - `id`: Identificador único del producto (PK).
   - `title`: Nombre del producto.
   - `description`: Descripción del producto.
   - `price`: Precio del producto.
   - `image`: URL de la imagen del producto.

2. **searches**: Registra las búsquedas realizadas por los usuarios.
   - `id`: Identificador único de la búsqueda (PK).
   - `search_term`: Término de búsqueda ingresado por el usuario.
   - `product_id`: Identificador del producto buscado (FK, puede ser null si no coincide con un producto específico).
   - `created_at`: Fecha y hora en que se realizó la búsqueda.



Nombre: Abraham Perez Nina
Cel: +591 67254169



