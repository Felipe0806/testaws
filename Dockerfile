# Usar una imagen base ligera de un servidor web
FROM nginx:latest
 
# Copiar el archivo HTML al directorio donde Nginx sirve contenido
COPY index.html /usr/share/nginx/html
 
# Exponer el puerto 80 para servir la página web
EXPOSE 80
 
# Iniciar Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]