FROM node:18-alpine

WORKDIR /var/www/ghost

# Copia el package.json y package-lock.json para instalar dependencias
COPY package.json .
COPY package-lock.json .

RUN npm install --production

# Copia el resto de los archivos de Ghost
COPY . .

# Expone el puerto 2368 (puerto por defecto de Ghost)
EXPOSE 2368

# Comando para iniciar Ghost
CMD ["npm", "start"]
