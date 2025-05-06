# Proyecto DevOps - Infraestructura Angular + Symfony + MySQL + Nginx

Este proyecto define una infraestructura DevOps completa para una aplicación web full stack basada en **Angular 17 (Node.js)** como frontend, **Symfony 7 (PHP 8.3)** como backend, base de datos **MySQL 8.0**, y servidor **Nginx 1.25** como proxy inverso. Todo está dockerizado y orquestado con **Docker Compose**, lo que facilita su despliegue tanto en desarrollo como en producción.

---

## 1. Descripción General

Este repositorio proporciona un entorno listo para usar que permite levantar de forma sencilla una arquitectura completa para el desarrollo web full stack, aprovechando contenedores Docker para encapsular los distintos servicios.

El objetivo es facilitar el desarrollo local, las pruebas y el despliegue a producción mediante una estructura modular y reutilizable.

---

## 2. Estructura del Proyecto

```plaintext
proyecto-devops/
├── frontend/                 # Proyecto Angular
├── backend/                  # Proyecto Symfony
├── docker/                   # Infraestructura
│   ├── nginx/                # Configuración de Nginx (proxy inverso)
│   ├── php/                  # Dockerfile para PHP/Symfony
│   └── mysql/                # Volumenes y scripts para inicialización de MySQL
├── docker-compose.yml        # Orquestación de servicios para desarrollo
├── docker-compose.prod.yml   # Orquestación de servicios para producción
├── .env.example              # Archivo ejemplo con variables de entorno
├── README.md                 # Documentación del proyecto
└── .gitignore                # Archivos y carpetas a excluir en Git

## 3. Requisitos

Antes de comenzar, asegúrate de tener instaladas las siguientes herramientas:

    Docker

    Docker Compose

## 4. Instrucciones de instalación

# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/proyecto-devops.git
cd proyecto-devops

# 2. Copiar archivo de entorno
cp .env.example .env

# 3. Construir y levantar los contenedores
docker-compose up --build -d

## 5. Acceso a los Servicios
Servicio	URL / Dirección	Puerto
Frontend (Angular)	http://localhost:4200	4200
Backend (Symfony)	http://localhost:8080/api	8080
Nginx (Proxy)	http://localhost	80
MySQL (Local)	localhost / mysql	3306

## 6. Notas Técnicas

    Backend Symfony utiliza PHP 8.3 con servidor Apache embebido en el contenedor PHP.

    La base de datos MySQL 8.0 se inicializa con un archivo init.sql ubicado en docker/mysql/.

    El frontend Angular se encuentra en desarrollo y aún no tiene un Dockerfile incluido (se ejecuta manualmente en desarrollo).

    Nginx funciona como proxy inverso, redirigiendo las rutas /api al backend Symfony y otras rutas al frontend Angular.

## 7. Verificación del Funcionamiento

Para comprobar que todo funciona correctamente:

    Abre el navegador y accede a: http://localhost:4200 → Debería cargar la app Angular.

    Visita http://localhost/api → Deberías ver la respuesta del backend Symfony.

    Verifica la base de datos con un cliente MySQL o CLI para comprobar que el servicio responde en el puerto 3306.

## 8. Detener el Entorno

Para apagar todos los servicios y liberar recursos:

docker-compose down
