FROM apache/superset:latest

USER root

RUN /app/docker/pip-install.sh --requires-build-essential \
    snowflake-sqlalchemy \
    snowflake-connector-python

RUN /app/docker/pip-install.sh --requires-build-essential \
    "apache-superset[fastmcp] @ git+https://github.com/apache/superset.git@master"

USER superset
