FROM nginx:latest
RUN sed -i 's/Welcome to Nginx!/Welc0me from Github/g' /usr/share/nginx/html/index.html
EXPOSE 8080
