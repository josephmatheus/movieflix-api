# Define a versão do NodeJS
FROM node:22

# Define o diretório de trabalho do contêiner
WORKDIR /app

# Copia o arquivo de dependências para dentro do contêiner
COPY package.json .

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos para dentro do contêiner
COPY . .

# Expor a rota 3000, que vai ser a porta usada pela aplicação
EXPOSE 3000

# Define o comando para inicializar a aplicação
CMD ["npm", "start"]