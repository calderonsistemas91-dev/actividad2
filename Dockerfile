# Usamos una imagen ligera de Linux
FROM alpine:latest

# Metadatos del proyecto (importante para auditoría)
LABEL version="0.1.0"
LABEL description="API del Proyecto Final"

# Comando simulado para el demo
CMD ["echo", "API v0.1.0 ejecutándose correctamente"]

# ... (lo que ya tenías)
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:3000/health || exit 1
