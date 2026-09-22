FROM apache/superset:latest

USER root

# Necesario para instalar Superset directamente desde GitHub
RUN apt-get update \
    && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

# Drivers adicionales
RUN /app/docker/pip-install.sh --requires-build-essential \
    snowflake-sqlalchemy \
    snowflake-connector-python

# Superset actual desde master + soporte MCP
RUN /app/docker/pip-install.sh --requires-build-essential \
    "apache-superset[fastmcp] @ git+https://github.com/apache/superset.git@master"

USER superset
