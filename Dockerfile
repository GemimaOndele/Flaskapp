# Utilise une image officielle Python en version allégée
FROM python:3.10-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier requirements.txt dans le conteneur et installe les dépendances
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copie le reste des fichiers de l'application dans le conteneur
COPY . .

# Expose le port sur lequel l'application Flask s'exécute
EXPOSE 5000

# Commande pour démarrer l'application Flask
CMD ["python", "app.py"]
