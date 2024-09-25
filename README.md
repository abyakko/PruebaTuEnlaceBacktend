
# Backend Project - PHP, Laravel, MySQL

Este proyecto es una aplicación backend construida con **Laravel** (framework de PHP) y utiliza **MySQL** como base de datos. Proporciona una API que interactúa con los datos de productos y búsquedas, y es consumida por el frontend.

## Despliegue en la web

Puedes revisar el proyecto backend en funcionamiento visitando el siguiente enlace:

[Ver el backend en la web](https://tusitioweb.com/backend)

Este enlace te llevará a la versión desplegada de la API.

También puedes visualizar cómo se integra este backend con el frontend accediendo a la siguiente página, donde podrás ver la interfaz de usuario que consume esta API:

[Ver la aplicación frontend](https://pruebayuenlacefrontend.vercel.app/)

Ten en cuenta que el segundo botón en el frontend no está completamente funcional debido a una limitación de tiempo para la publicación de la segunda API.

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
git clone https://github.com/usuario/repo-backend.git
```

2. Accede al directorio del proyecto:

```bash
cd repo-backend
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
DB_DATABASE=nombre_base_datos
DB_USERNAME=tu_usuario
DB_PASSWORD=tu_contraseña
```

6. Ejecuta las migraciones para crear las tablas necesarias:

```bash
php artisan migrate
```

7. Si deseas popular la base de datos con datos de prueba, puedes ejecutar los seeders:

```bash
php artisan db:seed
```

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
SELECT products.title, COUNT(searches.id) AS total_searches
FROM searches
JOIN products ON searches.product_id = products.id
GROUP BY products.id, products.title
ORDER BY total_searches DESC
LIMIT 5;
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

### Ejemplo de Migración para la Tabla `products`

```php
Schema::create('products', function (Blueprint $table) {
    $table->id();
    $table->string('title');
    $table->text('description');
    $table->decimal('price', 8, 2);
    $table->string('image');
    $table->timestamps();
});
```

### Ejemplo de Migración para la Tabla `searches`

```php
Schema::create('searches', function (Blueprint $table) {
    $table->id();
    $table->string('search_term');
    $table->foreignId('product_id')->nullable()->constrained('products')->onDelete('set null');
    $table->timestamps();
});
```

## Despliegue para Producción

Para desplegar la aplicación en un servidor de producción:

1. Asegúrate de tener configurado un servidor con PHP y MySQL.
2. Sube los archivos del proyecto y configura el entorno con el archivo `.env`.
3. Ejecuta las migraciones en la base de datos de producción.
4. Usa un servidor como **Apache** o **Nginx** para servir la aplicación.

## Personalización

- **Laravel**: Los endpoints de la API y las rutas se configuran en `routes/api.php`.
- **MySQL**: La estructura de la base de datos puede ser personalizada con migraciones y seeders que se encuentran en `database/migrations` y `database/seeders`.

## Autor

- **Nombre**: Abraham Perez Nina
- **Contacto**: +591 67254169


SELECT p.id, p.title, COUNT(s.product_id) AS search_count FROM products p JOIN searches s ON p.id = s.product_id GROUP BY p.id, p.title ORDER BY search_count DESC LIMIT 5;
