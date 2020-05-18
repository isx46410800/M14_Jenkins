# crea un imagen utilizando una imagen de tipo node.js de bitnami como base
FROM bitnami/node:9 as builder
ENV NODE_ENV="production"

# Copiamos el codigo fuente de la aplicacion en el dir /app
COPY . /app

# El directorio en el que trabajaremos al entrar
WORKDIR /app

# Instala las dependencias de node.js definidas en /app/packages.json
RUN npm install

# Crea una imagen nueva ya para produccion con lo anterior y configura el puerto 5000 para escuchar 
FROM bitnami/node:9-prod
ENV NODE_ENV="production"
COPY --from=builder /app /app
WORKDIR /app
ENV PORT 5000
EXPOSE 5000

# Inicia la aplicacion
CMD ["npm", "start"]
