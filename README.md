# docker

 * Just a bunch of docker files, notes and utilities to make my life easier :)

#### alpine [(official)](https://hub.docker.com/_/alpine/)

 * Start container (shell)
 ```bash
 docker run --rm -it alpine:latest /bin/ash
 ```


#### scala-sbt (local dockerfile)

 * Created from alpine

 * Build image (from dockerfile)
```bash
docker build -t scala-sbt:latest scala-sbt
```
 * Start container (shell)
```bash
docker run --rm -it --name [image_name] scala-sbt:latest /bin/ash
```


#### mongodb [(official)](https://hub.docker.com/_/mongo/)

 * Container exposes port 27017

 * Start container (daemon)
```bash
docker run --rm -p [host_port]:[container_port] --name [image_name] -d mongo:latest
docker run --rm -p 27018:27017 --name some-mongodb -d mongo:latest
```

 * Start container (daemon) with WiredTiger engine
```bash
docker run --rm -p [host_port]:[container_port] --name [image_name] -d mongo:latest --storageEngine wiredTiger
```

 * Start container (daemon) with a host directory as container data volume
  * Note: we use /data/db as mongo writes by default to that location
```bash
docker run --rm -p [host_port]:[container_port] -v [host_path]:[container_path] --name [image_name] -d mongo:latest
```


#### redis [(official)](https://hub.docker.com/_/redis/)

 * Container exposes port 6379

 * Start container (daemon)
```bash
docker run --rm -p [port_host]:[port_container] --name [image_name] -d redis:latest
docker run --rm -p 6380:6379 --name some-redis -d redis:latest
```


#### Links
 * Docker cheat sheet: [https://github.com/wsargent/docker-cheat-sheet]
