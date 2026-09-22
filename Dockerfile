FROM apache/superset:latest

USER root

RUN /app/docker/pip-install.sh --requires-build-essential \
    snowflake-sqlalchemy \
    snowflake-connector-python \
    "fastmcp==3.4.1"

USER superset
