# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Install dependencies
RUN composer install --no-dev --optimize-autoloader

# Expose port 80 to the outside world
EXPOSE 8000

# Run the Slim Framework using the built-in PHP server
CMD ["php", "-S", "0.0.0.0:8000", "-t", "main.php"]
