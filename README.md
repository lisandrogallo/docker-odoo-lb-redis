# Docker stack running Odoo, Traefik, Postgres & Redis

## Run the stack

```
cd ~
git clone https://github.com/lisogallo/docker-odoo-lb-redis
git clone -b 10.0 --depth 1 https://github.com/Smile-SA/odoo_addons
cp -r ~/odoo_addons/smile_redis_session_store ~/docker-odoo-lb-redis/addons/
cd docker-odoo-lb-redis
docker-compose up --scale odoo=5
```

## Open the browser and log into Odoo

[http://localhost](http://localhost)

## List Odoo sessions created on Redis database

    apt-get install redis-tools
    redis-cli -n 1 --scan --pattern '*'
