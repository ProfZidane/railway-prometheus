FROM prom/prometheus

# Install envsubst
USER root
RUN apk add --no-cache gettext

# Copy configuration template and entrypoint script
COPY prometheus.yml /etc/prometheus/prometheus.yml.template


# Set default environment variables
ENV PROMETHEUS_TARGET=localhost:9090
ENV RAILWAY_BACKEND_TARGET=web-production-70191.up.railway.app

EXPOSE 9090

ENTRYPOINT ["/entrypoint.sh"]
 
