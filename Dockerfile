# Imagem base nginx
FROM nginx:alpine

# Remove conteúdo padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia arquivos do frontend
COPY . /usr/share/nginx/html

# Expõe porta padrão
EXPOSE 80

# Inicializa nginx
CMD ["nginx", "-g", "daemon off;"]