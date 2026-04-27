# ─── Image de base légère ─────────────────────────────────────────────────
FROM nginx:alpine

# ─── Métadonnées ──────────────────────────────────────────────────────────
LABEL maintainer="fareshabbessi99@gmail.com"
LABEL project="DS2 - Mini Site Web"
LABEL version="1.0"

# ─── Supprimer la config nginx par défaut ─────────────────────────────────
RUN rm -rf /etc/nginx/conf.d/*

# ─── Copier la config nginx personnalisée ─────────────────────────────────
COPY nginx.conf /etc/nginx/conf.d/default.conf

# ─── Copier les fichiers du site dans le conteneur ────────────────────────
COPY ./src /usr/share/nginx/html

# ─── Exposer le port HTTP ─────────────────────────────────────────────────
EXPOSE 80

# ─── Lancer nginx en avant-plan ───────────────────────────────────────────
CMD ["nginx", "-g", "daemon off;"]