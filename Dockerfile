FROM wnameless/oracle-xe-11g:16.04

ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get install -y zip unzip \
    && mv /u01/app/oracle/product /u01/app/oracle_product && ln -s /u01/app/oracle_product /u01/app/oracle/product \
    && mkdir /usr/lib/oracle && cd /u01/app/oracle && zip -3 -r -y /usr/lib/oracle/u01.zip * && rm -rf /u01/app/oracle/* \
    && rm -rf /var/lib/apt/lists/*
VOLUME /u01/app/oracle

ADD prepare.sql /docker-entrypoint-initdb.d/prepare.sql
ADD prepare.sh /usr/sbin/prepare
RUN chmod +x /usr/sbin/prepare
CMD /usr/sbin/prepare && /usr/sbin/startup.sh && tail -f /dev/null
