FROM apache/superset:latest-dev

USER root

RUN pip install clickhouse-connect && \
    pip install mysqlclient && \
    pip install psycopg2

COPY ./script/superset-init.sh /app/superset-init.sh

COPY ./config/superset_config.py /app/pythonpath/

USER superset

ENTRYPOINT [ "/app/superset-init.sh" ]
