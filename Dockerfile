#!/bin/bash 

# Use an official PHP base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the PHP application files to the container
COPY src/ /var/www/html/src
COPY tests/ /var/www/html/tests
COPY .gitignore .php_cs.dist composer.json composer.lock /var/www/html/

# Expose port 80 for the web server
EXPOSE 80










