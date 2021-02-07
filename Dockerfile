FROM mailu/radicale:master

RUN adduser -D -h /var/lib/radicale -s /sbin/nologin radicale radicale

RUN wget https://github.com/MrChenWithCapsule/radicale-dovecot-auth/archive/master.zip \
    && unzip master.zip \
    && pip3 install ./radicale-dovecot-auth-master \
    && rm -rf master.zip radicale-dovecot-auth-master
    
USER radicale:radicale
CMD ["/usr/bin/radicale"]
