FROM apache/superset:latest

USER root
RUN /app/.venv/bin/pip install snowflake-sqlalchemy snowflake-connector-python

USER superset
