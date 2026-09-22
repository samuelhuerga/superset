FROM apache/superset:c636115

USER root

RUN /app/docker/pip-install.sh --requires-build-essential \
    snowflake-sqlalchemy \
    snowflake-connector-python

USER superset
