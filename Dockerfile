# Use an official Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index page
RUN rm -rf ./*

# Copy your game files into the Nginx html directory
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx (already handled by the base image)
