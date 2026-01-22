# Usamos explícitamente la versión Alpine
FROM n8nio/n8n:alpine

USER root

# En Alpine, el comando es 'apk' y el paquete de idioma lleva '-data-'
RUN apk add --update --no-cache tesseract-ocr tesseract-ocr-data-spa

USER node
