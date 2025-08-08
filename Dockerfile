# Use the official nginx image as the base
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your static HTML files into the nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 (the default for nginx)
EXPOSE 80
