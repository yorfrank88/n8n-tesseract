FROM n8nio/n8n:2.3.4

USER root

# Actualizamos repositorios e instalamos Tesseract + Español usando apt-get (para Debian)
RUN apt-get update && \
    apt-get install -y tesseract-ocr tesseract-ocr-spa && \
    rm -rf /var/lib/apt/lists/*

USER node
