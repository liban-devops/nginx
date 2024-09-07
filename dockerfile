# Utiliser l'image Nginx de base
FROM nginx:latest

# Supprimer les fichiers par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/edd

# Supprimer les fichiers par défaut de Nginx
RUN mkdir /usr/share/nginx/html/edd

# Copier le fichier HTML dans le répertoire par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]