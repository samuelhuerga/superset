FROM apache/superset:latest

USER root
RUN pip install snowflake-sqlalchemy snowflake-connector-python

USER superset
