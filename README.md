<h1 align="center">
  Desafío Foro-Hub    
</h1>
Foro Hub es una aplicación de foro diseñada para facilitar la comunicación y discusión entre usuarios. Esta aplicación permite a los usuarios crear tópicos, responder a los mismos y participar en discusiones.

## Informacion sobre el desafio planteado 🖥️

<p>Un foro es un espacio donde todos los participantes de una plataforma pueden plantear sus preguntas sobre determinados tópicos. 
  Aquí en Alura Latam, los estudiantes utilizan el foro para sacar sus dudas sobre los cursos y proyectos en los que participan. 
  Este lugar mágico está lleno de mucho aprendizaje y colaboración entre estudiantes, profesores y moderadores.
</p>
<p>
  Este es nuestro desafío, llamado ForoHub: en él, vamos a replicar este proceso a nivel de back end y, para eso, crearemos una API REST usando Spring.

</p>

<p>
  Nuestra API se centrará específicamente en los tópicos, y debe permitir a los usuarios:
</p>
<ul>
  <li>
    Crear un nuevo tópico;
  </li>
  <li>
    Mostrar todos los tópicos creados;
  </li>
  <li>
    Mostrar un tópico específico;
  </li>
  <li>
    Mostrar un tópico específico;
  </li>
  <li>
    Actualizar un tópico;
  </li>
  <li>
    Eliminar un tópico.
  </li>
</ul>

<p>
  Es lo que normalmente conocemos como CRUD* (CREATE, READ, UPDATE, DELETE) y es muy similar a lo que desarrollamos en LiterAlura, pero ahora de forma completa, 
agregando las operaciones de UPDATE y DELETE, y usando un framework que facilitará mucho nuestro trabajo.
</p>

<p>
  *Traducción libre (en orden): Crear, Consultar, Actualizar y Eliminar.
</p>

<p>
  En resumen, nuestro objetivo con este challenge es implementar una API REST con las siguientes funcionalidades:
</p>

<ol>
  <li>
    API con rutas implementadas siguiendo las mejores prácticas del modelo REST;
  </li>
  <li>
    Validaciones realizadas según las reglas de negocio;
  </li>
  <li>
    Implementación de una base de datos relacional para la persistencia de la información;
  </li>
  <li>
    Servicio de autenticación/autorización para restringir el acceso a la información.
  </li>
</ol>

## Características ⚙️

- Registro y autenticación de usuarios.
- Creación, edición, listado y eliminación de tópicos.
- Creación, edición y eliminación de respuestas a tópicos existentes.
- Listado de usuarios y tópicos.
- Autenticación mediante JWT.
## Tecnologías utilizadas ⚒️

`Configuración del entorno de desarrollo Java`

- Java JDK: versión: 17 en adelante
- Maven: versión 4 en adelante
- Spring: versión 3.0.2 - https://start.spring.io/
- MySql: versión 8 en adelante

`Dependencias`

- Lombok
- Spring Web
- Spring Boot DevTools
- Spring Data JPA
- Flyway Migration
- MySQL Driver
- Validation
- Spring Security
## :hammer: Estructura del proyecto

- **Entities**: Clases de entidad que representan las tablas de la base de datos.
- **Dto**: Clases de Data Transfer Object utilizadas para transferir datos entre el cliente y el servidor.
- **Repository**: Interfaces que extienden JpaRepository para realizar operaciones CRUD en las entidades.
- **Service**: Clases de servicio que contienen la lógica de negocio.
- **Controller**: Clases de controlador que manejan las solicitudes HTTP.
- **Security**: Clases relacionadas con la configuración de seguridad y la autenticación.
### Swagger 📊
Swagger está configurado para generar documentación de la API automáticamente. Puedes acceder a la interfaz de Swagger en la siguiente URL cuando el servidor esté en funcionamiento:
```
http://localhost:8080/swagger-ui/index.html
```
![image](https://github.com/MToro2024/forohub-ch-4/assets/160083161/e585f887-aea1-45c8-99e5-c5d1b7230bb0)

Ejecución
Para ejecutar la aplicación, utiliza el siguiente comando en la raíz del proyecto:
```
mvn spring-boot:run
```
La aplicación estará disponible en `http://localhost:8080`.

Endpoints principales:
- `/login`: Endpoint para autenticación de usuarios. Envía una solicitud POST con un JSON que contiene `username` y `password`.
- `/usuarios`: Endpoint para listar usuarios. Requiere autenticación mediante un token JWT.
- `/topicos`: Endpoint para manejar la creación, actualización y eliminación de tópicos.
- `/respuestas`: Endpoint para manejar la creación, actualización y eliminación de respuestas.
## Ejemplos de solicitudes 📑
![image](https://github.com/MToro2024/forohub-ch-4/assets/160083161/e56e2487-e168-40a0-b1fa-2d2fdfe95747)

- Autenticación 🔐

Solicitud:
```
POST http://localhost:8080/login
```
Body:
```
{
    "email": "usuario@mail.com",
    "clave": "contraseña"
}
```
Respuesta:
```
{
    "token": "jwt_token_generado"
}
```
- Listado tópico 📝
![image](https://github.com/MToro2024/forohub-ch-4/assets/160083161/2d4ec2b9-980f-449b-9ead-73749bf6f595)

<h2>
    Estado del proyecto
</h2>

<ul>
    <li>
        El desafio planteado por <a href="https://www.aluracursos.com/">Alura latam</a> y <a href="https://www.oracle.com/ar/">Oracle</a> esta completo.
    </li>
    <li>
        Se agregaron end point para: crear, leer, modificar y borrar, tanto cursos, como respuestas.
A modo de desafio adicional.
    </li>
</ul>

<p>A modo personal resta generar end point para usuarios y generar autorizacion por roles en toda la API.</p>
