## About the project

This is a test project. The aim of the project is to make a clone of Airbnb. The project is created using Ruby 3.2.0 and Ruby on Rails 7.0.4. The database used is PostgreSQL 15.

## Todo list

- [x] Add a home page, where the accommodation will be displayed
- [x] Add the ability to authenticate users
- [x] Add an accommodation model
- [ ] Add ability to add housing information
- [x] Add option to book accommodations
- [ ] Add a strict validation for the user's phone number

### Extras:

- [x] Add dockerfile and docker support
- [ ] Add alerts for better user experience
- [ ] Add images for accommodation to seeds

## Launching an application using Docker

To start the application in Docker, a Dockerfile and a docker-compose file were created for development mode.
Docker version `20.10.22` and docker compose version `2.15.1` were used for development.

Before launching it is recommended to create a `.env` file and in it to specify values for the three variables:
- `TEST_AIRBNB_CLONE_DATABASE_USERNAME`
- `TEST_AIRBNB_CLONE_DATABASE_PASSWORD`
- `TEST_AIRBNB_CLONE_DATABASE_HOST`

Then just execute the commands:

- `docker-compose -f docker-compose.dev.yml build`
- `docker-compose -f docker-compose.dev.yml up`
