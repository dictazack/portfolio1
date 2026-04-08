FROM nginx:alpine

LABEL org.opencontainers.image.source="https://github.com/dictazack/portfolio1"
LABEL org.opencontainers.image.description="Zakaria Driouich - Portfolio"

COPY index.html /usr/share/nginx/html/
COPY src/ /usr/share/nginx/html/src/
COPY assets/ /usr/share/nginx/html/assets/
COPY robots.txt /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost/ || exit 1
