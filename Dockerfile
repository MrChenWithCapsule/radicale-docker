FROM mailu/radicale:master

RUN pip3 install radicale-dovecot-auth \
    && adduser -D -h /var/lib/radicale -s /sbin/nologin radicale radicale
    
USER radicale:radicale
CMD ["/usr/bin/radicale"]
