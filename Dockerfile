# Definindo a imagem a ser utilizada (evitar latest)
FROM alpine:3.21.3

# Instalando dependencias necessárias
RUN apk update && apk add --no-cache postgresql-client gzip

# Copiando os arquivos necessários
COPY backup.sh /usr/local/bin/backup.sh
COPY crontab.txt /etc/crontabs/root

RUN chmod +x /usr/local/bin/backup.sh

CMD ["crond", "-f"]