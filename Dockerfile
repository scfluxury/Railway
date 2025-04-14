# Immagine base con Node e Chromium
FROM ghcr.io/puppeteer/puppeteer:latest

# Crea cartella app
WORKDIR /app

# Copia i file nel container
COPY package.json .
COPY index.js .
COPY start.sh .

# Installa dipendenze
RUN npm install

# Rendi lo script di avvio eseguibile
RUN chmod +x start.sh

# Comando di avvio
CMD ["./start.sh"]
