FROM odoo:10

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y python-redis && \
    rm -r /var/lib/apt/lists/*

USER odoo
