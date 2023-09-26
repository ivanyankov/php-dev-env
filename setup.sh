#!/bin/bash

# Get the new domain from user input
echo "Enter the new development domain name:"
read new_domain

if grep -q "$new_domain" /etc/hosts; then
    echo "The given domain already exists. Please choose different one."
else
    # Add the new domain to /etc/hosts
    echo "127.0.0.1   $new_domain.local" | sudo tee -a /etc/hosts

    # Copy the contents from the example env to .env file
    cp src/.env.example src/.env | sudo tee -a src/.env

    # Replace the existing domain in .env file with the newly created one
    sed -i "s/WP_HOME=.*$/WP_HOME='http://$new_domain.local/'" src/.env | sudo tee -a src/.env

    # Rebuild and restart the Docker containers
    docker network create dev-env-proxy
    docker compose down -v
    docker compose build --no-cache
    docker compose up -d
    echo "======= Your application has been successfully built. You can access it on http://$new_domain.local ======="

fi