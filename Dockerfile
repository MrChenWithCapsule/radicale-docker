FROM mailu/radicale:master

RUN pip3 install radicale-dovecot-auth

CMD ["/usr/bin/radicale"]
