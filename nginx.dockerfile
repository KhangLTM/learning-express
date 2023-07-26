# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Expose the port Nginx will listen on
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
