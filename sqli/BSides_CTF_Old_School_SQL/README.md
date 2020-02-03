# BSides-CTF Old-School-SQL

## Problem

```
Being the admin is great
http://localhost:10001
```

## Run

```bash
docker network create old-school-sql-network
docker-compose up -d
curl http://localhost:8080/setup.php
```

Note: Don't use docker or mysql commands to solve!

## Shutdown

```bash
docker-compose kill
docker-compose rm
docker image rm bsides_ctf_old_school_sql_phpapp
docker network rm old-school-sql-network
```

## Source

Don't access before solve

https://github.com/teambi0s/BSides-CTF/tree/master/2018/Web/Old-School-SQL