FROM apache/superset:b6de64f

USER root

RUN /app/docker/pip-install.sh --requires-build-essential \
    snowflake-sqlalchemy \
    snowflake-connector-python

USER superset
