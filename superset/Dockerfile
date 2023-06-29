FROM apache/superset:latest-dev

USER root

RUN pip install --no-cache-dir clickhouse-connect && \
    pip install --no-cache-dir mysqlclient && \
    pip install --no-cache-dir psycopg2

COPY ./script/superset-init.sh /app/superset-init.sh

COPY ./config/superset_config.py /app/pythonpath/

USER superset

ENTRYPOINT [ "/app/superset-init.sh" ]
