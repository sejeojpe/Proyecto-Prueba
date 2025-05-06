FROM node:20

# Crear directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto por defecto de Angular
EXPOSE 4200

# Comando por defecto (modo desarrollo)
CMD ["npm", "start"]
