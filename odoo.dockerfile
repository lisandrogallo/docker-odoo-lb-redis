FROM odoo:10

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y wget \
    python-redis \
    && rm -r /var/lib/apt/lists/*

RUN cd /usr/local/bin/ \
    && wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /usr/local/bin/wait-for-it.sh

USER odoo
