# Creando una API REST con Rails

Este proyecto consiste en crear una API REST con Ruby on Rails que permite consultar y listar datos en formato JSON relacionados con equipos de fútbol de la Copa del Mundo. Los datos se generan utilizando la gema Faker y se almacenan en una base de datos PostgreSQL.

## Requisitos

- Ruby 2.7.0 o superior
- Rails 6.0 o superior
- PostgreSQL

## Instrucciones de Instalación

1. Clona este repositorio en tu máquina local:

    ```bash
    git clone https://github.com/tu-usuario/rails_api.git
    ```

2. Ingresa al directorio del proyecto:

    ```bash
    cd rails_api
    ```

3. Instala las gemas requeridas:

    ```bash
    bundle install
    ```

4. Crea la base de datos, ejecuta las migraciones y carga los datos de ejemplo:

```bash
rails db:create
rails db:migrate
rails db:seed
```

## Uso

- Para iniciar el servidor de desarrollo, ejecuta:

```bash
rails server
```

- Abre tu navegador y accede a `http://localhost:3000/world_cup_teams` para ver la aplicación en funcionamiento.

## Endpoints de la API

La API proporciona los siguientes endpoints:

- `GET /world_cup_teams`: Muestra la lista de equipos de la Copa del Mundo en formato JSON.

## Contribuciones

Este es un proyecto de ejemplo y no aceptamos contribuciones externas. Si tienes preguntas o sugerencias, siéntete libre de crear un "Issue" en el repositorio.

## Créditos

Este proyecto se basa en el tutorial "Creando una API REST con Rails" proporcionado por [Nombre del Proveedor del Tutorial].

## Licencia

Este proyecto se distribuye bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.
