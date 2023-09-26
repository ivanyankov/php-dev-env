# Dockerized WordPress
Simple dockerized WordPress using roots/bedrock

## Prerequisites
- Docker

## Installation guide
1. Clone the repository `git@github.com:ivanyankov/php-dev-env.git`
2. CD to the cloned folder
3. Run in your terminal `chmod +x setup.sh`
4. Run the script `./setup.sh`
5. Enter a domain name for your development env when prompt. Example: **development-application**
6. If everything was configured correctly you should have one container with three images running `app-nginx`, `app-db`, `dev-application`
7. Access the application on `development-application.local`

## Usage
The root of the application where your index.php file must be placed is `/src/web`. Modify your database connection file to use the credentials from the `docker-compose.yml` file.

## Compatibility
Developed and tested on `Ubuntu 22.04.3 LTS`
