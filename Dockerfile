FROM prom/prometheus:v2.31.1

# Copia o arquivo de configuração para o container
COPY config/prometheus.yml /etc/prometheus/prometheus.yml

# Expor a porta 9090
EXPOSE 9090

# Comando para iniciar o Prometheus
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
