FROM apache/superset:latest

USER root
RUN /app/.venv/bin/python -m pip install snowflake-sqlalchemy snowflake-connector-python

USER superset
