# Используем супер-легкий веб-сервер Nginx
FROM nginx:alpine

# Копируем файлы nginx.conf и index.html в папку, откуда Nginx раздает файлы
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем файл index.html в папку, откуда Nginx раздает файлы
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 8080 (стандарт для Cloud Run)
EXPOSE 8080

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
