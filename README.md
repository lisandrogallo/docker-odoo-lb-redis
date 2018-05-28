# Docker stack running Odoo, Traefik, Postgres & Redis

## Run the stack

```
git clone https://github.com/lisandrogallo/docker-odoo-lb-redis
cd docker-odoo-lb-redis
git submodule add -b 10.0 https://github.com/Smile-SA/odoo_addons
mkdir addons
cp -r odoo_addons/smile_redis_session_store addons/
docker-compose up --scale odoo=5
```

## Open the browser and log into Odoo

[http://localhost](http://localhost)

## List Odoo sessions created on Redis database

    apt-get install redis-tools
    redis-cli -n 1 --scan --pattern '*'
