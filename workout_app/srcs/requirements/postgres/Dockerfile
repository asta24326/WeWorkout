# Используем официальный PostgreSQL образ
FROM postgres:15

# Copying init script
COPY tools/init.sh /docker-entrypoint-initdb.d/init.sh

# Making it executable
RUN chmod +x /docker-entrypoint-initdb.d/init.sh