# CAMBIO IMPORTANTE: Usamos 'latest-debian' en lugar de 'latest'
# Esto nos garantiza que 'apt-get' exista y funcione.
FROM n8nio/n8n:latest-debian

USER root

# Instalamos Tesseract y el idioma español
RUN apt-get update && \
    apt-get install -y tesseract-ocr tesseract-ocr-spa && \
    rm -rf /var/lib/apt/lists/*

USER node
