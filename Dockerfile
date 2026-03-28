# Usamos una imagen ligera de Linux
FROM alpine:latest

# Metadatos del proyecto (importante para auditoría)
LABEL version="0.1.0"
LABEL description="API del Proyecto Final"

# Comando simulado para el demo
CMD ["echo", "API v0.1.0 ejecutándose correctamente"]