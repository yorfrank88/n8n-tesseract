FROM n8nio/n8n:2.3.4
USER root
RUN apk add --no-cache tesseract-ocr tesseract-ocr-data-spa
USER node
