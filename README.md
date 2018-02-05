# Run the stack

```
cd ~
git clone https://github.com/lisogallo/docker-odoo-lb-redis
git clone -b 10.0 --depth 1 https://github.com/Smile-SA/odoo_addons
cp -r ~/odoo_addons/smile_redis_session_store ~/docker-odoo-lb-redis/addons/
cd docker-odoo-lb-redis
docker-compose up --scale odoo=5
```
