# Use nginx alpine as base image for lightweight static file serving
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your application files to nginx html directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]