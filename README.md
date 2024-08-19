<br>
<div align='center'>
	<h1>AUTOSTORE<br>BACKEND</h1>
</div>
<a name="readme-top"></a>

# 📗 Table of Contents
- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
  - [📽️ Video presentation](#video-demo)
- [💻 Getting Started](#getting-started)
- [🧪 Testing the app](#testing)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)


# 📖 AUTOSTORE BACKEND <a name="about-project"></a>

**AUTOSTORE BACKEND** es una API RESTful desarrollada con Ruby on Rails que gestiona el inventario de repuestos para automóviles. Provee endpoints para realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en los productos, así como autenticación de usuarios mediante JWT.

## 🛠 Built With <a name="built-with"></a>

#### Tech Stack <a name="tech-stack"></a>

- **Ruby on Rails:** Framework web utilizado para construir la API RESTful.
- **PostgreSQL:** Sistema de gestión de bases de datos utilizado para almacenar la información de los productos y usuarios.
- **JWT (JSON Web Tokens):** Utilizado para la autenticación segura de usuarios.

#### Key Features <a name="key-features"></a>

- **API RESTful:** Provee endpoints para realizar operaciones CRUD en los productos.
- **Autenticación JWT:** Implementación de autenticación segura para proteger las rutas de la API.
- **Gestión de Usuarios:** Permite la creación y autenticación de usuarios.
- **Soporte para CORS:** Configuración de CORS para permitir interacciones entre el frontend y el backend.

<!-- LIVE DEMO  -->

## 🚀 Live Demo <a name="live-demo"></a>

Usa estos enlaces para interactuar con la API:

- [Base URL](https://autostore-backend.onrender.com/)
- [Productos](https://autostore-backend.onrender.com/api/v1/productos)

Usa este enlace para ingresar a la app de frontend:
- [AUTOSTORE FRONTEND](https://autostore1.vercel.app/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- VIDEO DEMO  -->

## 📽️ Video presentation <a name="video-demo"></a>

- [Video presentación] (Próximamente)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

- Ruby (versión 3.2)
- Ruby on Rails (versión 7.0)
- PostgreSQL (versión 15)

### Setup

Para ejecutar Autostore Backend localmente, sigue estos sencillos pasos:

1. Clona el repositorio:

`git clone https://github.com/jicamargo/autostore-backend.git`

2. Instala las dependencias:

`bundle install`

3. Configura la base de datos:

- Crea y migra la base de datos:

`rails db:create`
`rails db:migrate`

4. Inicia el servidor:

`rails s`

5. La API estará disponible en http://localhost:3000/.

### Usage
La API ofrece los siguientes endpoints:

- POST /api/v1/login: Autenticar un usuario y obtener un token JWT.
- GET /api/v1/productos: Obtener la lista de productos.
- POST /api/v1/productos: Crear un nuevo producto (requiere autenticación).
- PATCH /api/v1/productos/:id: Actualizar un producto existente (requiere autenticación).
- DELETE /api/v1/productos/:id: Eliminar un producto (requiere autenticación).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- TESTING -->

## 🧪 Testing <a name="testing"></a>

### Configuración de Pruebas

Este proyecto utiliza Minitest para las pruebas unitarias y funcionales en el backend. Las pruebas están diseñadas para verificar la funcionalidad de los controladores, modelos y otras partes críticas de la aplicación.

### Ejecutar Pruebas

Para ejecutar las pruebas en el entorno de desarrollo, sigue estos pasos:

1. Asegúrate de haber configurado tu entorno de pruebas y haber ejecutado las migraciones necesarias:

   ```bash
   rails db:test:prepare
    ```

2. Ejecuta las pruebas:

   ```bash
   rails test
   ```

3. Opcionalmente, puedes ejecutar pruebas para un archivo específico:

   ```bash
   rails test test/models/producto_test.rb
   ```

4. Revisa los resultados en la consola para asegurarte de que todas las pruebas pasen correctamente.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **JIC Software (Jorge Camargo)**
- GitHub: [@jicamargo](https://github.com/jicamargo)
- LinkedIn: [Jorge Camargo](https://www.linkedin.com/in/jorgecamargog/?locale=en_US)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->
## 🔭 Future Features <a name="future-features"></a>

- [ ] **Paginación en la Consulta de Productos:** Implementar la funcionalidad de paginación para la consulta de productos, permitiendo a los clientes recibir datos en bloques manejables en lugar de todos los registros de una vez.
- [ ] **Filtrado y Búsqueda Avanzada:** Agregar soporte para filtrar productos por diferentes criterios como categoría, rango de precios, disponibilidad en stock, entre otros, así como una búsqueda por términos específicos.
- [ ] **Autorización de Roles:** Extender el sistema de autenticación para incluir roles de usuario, como administrador y cliente, con diferentes niveles de acceso a los endpoints de la API.
- [ ] **Rate Limiting:** Implementar un sistema de limitación de tasa para evitar abusos de la API y mejorar la seguridad.
- [ ] **Cacheo de Consultas Frecuentes:** Implementar mecanismos de caché para acelerar las respuestas a consultas comunes, reduciendo la carga en la base de datos y mejorando el rendimiento.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contribuciones, problemas y solicitudes de características son bienvenidos.

Siéntete libre de revisar la [página de issues](https://github.com/jicamargo/autostore-backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

- Si te gusta este proyecto, ¡dale una ⭐️!
- Puedes invitarme un café ☕ [aquí](https://bmc.link/jicamargo).
- También puedes seguirme 👍🏽 en las redes sociales.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Gracias al equipo de Meru, que me permitió participar en este proyecto.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

Este proyecto está [MIT](./LICENSE) licenciado.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

