#!/bin/bash

# Get the new domain from user input
echo "Enter the new development domain name:"
read new_domain

if grep -q "$new_domain" /etc/hosts; then
    echo "The given domain already exists. Please choose different one."
else
    # Add the new domain to /etc/hosts
    echo "127.0.0.1   $new_domain.local" | sudo tee -a /etc/hosts

    # (Optional) Rebuild and restart the Docker containers
    docker network create dev-env-proxy
    docker compose down
    docker compose build
    docker compose up -d
fi