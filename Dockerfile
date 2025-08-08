# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio files into Nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

