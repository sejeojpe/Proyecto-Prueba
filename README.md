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
