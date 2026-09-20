# Utilise une image Node.js officielle
FROM node:18-alpine

# Définit le dossier de travail
WORKDIR /app

# Copie les fichiers de dépendances
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste du code
COPY . .

# Expose le port (Render utilise généralement 10000)
EXPOSE 10000

# Commande de démarrage
CMD ["node", "server.js"]
