FROM sath89/oracle-xe-11g

ADD prepare.sql /docker-entrypoint-initdb.d/prepare.sql
ADD prepare.sh /usr/sbin/prepare
RUN chmod +x /usr/sbin/prepare
CMD /usr/sbin/prepare && /usr/sbin/startup.sh && tail -f /dev/null
