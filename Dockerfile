                       
FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Copy only necessary files and directories
COPY src/ /usr/share/nginx/html/src
COPY tests/ /usr/share/nginx/html/tests
COPY .gitignore composer.json composer.lock /usr/share/nginx/html/

EXPOSE 80

# Start Nginx server when container starts
CMD ["nginx", "-g", "daemon off;"]

# Expose port 80 for the web server
EXPOSE 80










