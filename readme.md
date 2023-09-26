# Dockerized PHP development environment
Simple dockerized development env for PHP.

## Prerequisites
- Docker

## Installation guide
1. Clone the repository `git@github.com:ivanyankov/php-dev-env.git`
2. CD to the cloned folder
3. Run in your terminal `chmod +x setup.sh`
4. Enter a domain name for your development env when prompt. Example: **development-application**
5. If everything was configured correctly you should have one container with three images running `app-nginx`, `app-db`, `dev-application`
6. Access the application on `development-application.local`

## Connect to datbase
1. Install any SQL client software application
2. Connect to the database using the following credentials: Server Host: `localhost`, Database Name: `databaseName`, Port: `3308`, Username: `root`, Password: `DatabaseRootPassword!`

## Usage
The root of the application where your index.php file must be placed is `/src/web`. Modify your database connection file to use the credentials from the `docker-compose.yml` file.

## Compatibility
Developed and tested on `Ubuntu 22.04.3 LTS`
