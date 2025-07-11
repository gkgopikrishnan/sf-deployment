FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowsql-1.2.21-linux_x86_64.bash && \
    bash snowsql-1.2.21-linux_x86_64.bash -y -d /opt/snowsql && \
    ln -s /opt/snowsql/bin/snowsql /usr/local/bin/snowsql

ENTRYPOINT ["/usr/local/bin/snowsql"]
