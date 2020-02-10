# SECCON CTF Shooter

## Problem

```
Enjoy the game!
```

### Difference

The apk analysis is included in the original, but is not covered in this repository.  
So access directly to below url.

```
http://localhost:10002/admin
```

## Run

```bash
./run.sh
```

Note: Don't use docker or *sql commands to solve!

## Shutdown

```bash
docker-compose kill
docker-compose rm
docker image rm seccon_ctf_shooter_webapp
docker network rm shooter-network
```

## Source

Don't access before solve

https://github.com/SECCON/SECCON2018_online_CTF/blob/master/Reversing/shooter/