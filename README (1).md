# 🏋️ Invictus Fitness

### Sistema de Gestión Administrativa para Gimnasios

[![Laravel](https://img.shields.io/badge/Laravel-11.4.0-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com/)
[![PHP](https://img.shields.io/badge/PHP-8.2+-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-Base%20de%20datos-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://developer.mozilla.org/es/docs/Web/JavaScript)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-Interfaz-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![Estado](https://img.shields.io/badge/Estado-En%20producci%C3%B3n-success?style=for-the-badge)]()

------------------------------------------------------------------------

## 📌 Descripción

**Invictus Fitness** es un sistema web de gestión administrativa para
gimnasios, desarrollado con el objetivo de centralizar y optimizar los
procesos administrativos y operativos de los centros de
acondicionamiento físico.

La plataforma permite gestionar clientes, planes, suscripciones, clases,
asistencias, compras y gastos. Además, proporciona indicadores de
gestión y herramientas de análisis mediante un dashboard centralizado.

Su objetivo es mejorar la eficiencia administrativa, facilitar el
seguimiento de las operaciones y proporcionar información relevante para
la toma de decisiones.

------------------------------------------------------------------------

## 🚀 Funcionalidades principales

### 👥 Gestión de clientes

-   Registro y administración de clientes.
-   Consulta de información de los miembros.
-   Gestión centralizada de clientes.

### 📋 Planes y suscripciones

-   Administración de planes.
-   Gestión de suscripciones.
-   Seguimiento de los servicios contratados.

### 🏋️ Clases y asistencia

-   Administración de clases.
-   Gestión de asistencia de clientes.
-   Seguimiento de actividades.

### 📊 Dashboard

-   Visualización de indicadores de gestión.
-   Métricas generales del gimnasio.
-   Información consolidada para el seguimiento operativo.

### 💰 Compras y gastos

-   Registro de compras.
-   Administración de gastos.
-   Seguimiento de movimientos operativos.

### 📈 Reportes y estadísticas

-   Generación de reportes.
-   Consulta de información estadística.
-   Apoyo al análisis y toma de decisiones.

------------------------------------------------------------------------

## 🛠️ Tecnologías utilizadas

  Tecnología       Descripción
  ---------------- --------------------------------------------
  PHP 8.2+         Lenguaje de programación backend
  Laravel 11.4.0   Framework de desarrollo backend
  MySQL            Sistema de gestión de bases de datos
  JavaScript       Desarrollo de funcionalidades frontend
  jQuery           Manipulación del DOM y solicitudes AJAX
  Bootstrap        Diseño de interfaces responsivas
  Vite             Gestión y compilación de recursos frontend
  Node.js / NPM    Administración de dependencias JavaScript

------------------------------------------------------------------------

## 📋 Requisitos previos

Para instalar y ejecutar el proyecto se requiere:

-   PHP 8.2 o superior.
-   Composer.
-   MySQL.
-   Node.js y NPM.
-   Git.
-   Un servidor web o entorno de desarrollo compatible con Laravel.

------------------------------------------------------------------------

## ⚙️ Instalación y configuración

### 1. Clonar el repositorio

``` bash
git clone <URL_DEL_REPOSITORIO>
cd invictusfitness
```

### 2. Instalar dependencias de PHP

``` bash
composer install
```

### 3. Instalar dependencias de JavaScript

``` bash
npm install
```

### 4. Configurar las variables de entorno

Crear una copia del archivo de configuración:

``` bash
copy .env.example .env
```

En Linux o macOS:

``` bash
cp .env.example .env
```

Configurar las credenciales de conexión a la base de datos en el archivo
`.env`:

``` env
APP_NAME="Invictus Fitness"
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://127.0.0.1:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=invictusfitness
DB_USERNAME=root
DB_PASSWORD=
```

### 5. Generar la clave de aplicación

``` bash
php artisan key:generate
```

### 6. Ejecutar las migraciones

``` bash
php artisan migrate
```

### 7. Compilar los recursos del frontend

Para ejecutar el entorno de desarrollo:

``` bash
npm run dev
```

Para compilar los recursos destinados a producción:

``` bash
npm run build
```

### 8. Iniciar el servidor

``` bash
php artisan serve
```

La aplicación estará disponible en:

<http://127.0.0.1:8000>

------------------------------------------------------------------------

## 📁 Estructura del proyecto

``` text
invictusfitness/
│
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   └── Middleware/
│   └── Models/
│
├── bootstrap/
├── config/
├── database/
│   ├── migrations/
│   ├── seeders/
│   └── factories/
│
├── public/
├── resources/
│   ├── css/
│   ├── js/
│   └── views/
│
├── routes/
│   ├── web.php
│   └── api.php
│
├── storage/
├── tests/
├── .env.example
├── artisan
├── composer.json
├── package.json
└── vite.config.js
```

> **Nota:** Esta estructura es una referencia basada en la organización
> habitual de Laravel. Los directorios reales pueden variar según la
> implementación del proyecto.

------------------------------------------------------------------------

## 🔐 Seguridad

-   Las variables de entorno se administran mediante el archivo `.env`.
-   Las credenciales y los datos sensibles no deben publicarse en el
    repositorio.
-   El archivo `.env` debe permanecer excluido mediante `.gitignore`.
-   En entornos de producción se debe establecer `APP_DEBUG=false`.

------------------------------------------------------------------------

## 📌 Estado del proyecto

**Estado actual: En producción.**

Invictus Fitness cuenta con sus principales módulos de gestión
implementados y orientados a optimizar los procesos administrativos y
operativos de un gimnasio.

------------------------------------------------------------------------

## 👨‍💻 Autor

Desarrollado como una solución de software para la administración y
gestión integral de gimnasios.

------------------------------------------------------------------------

**Invictus Fitness** --- Tecnología al servicio de la gestión deportiva.
