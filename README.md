# docker

 * Just a bunch of docker files, notes and utilities to make my life easier :)

#### scala-sbt (local)

 *  Build image (from dockerfile)
```bash
docker build -t scala-sbt:latest scala-sbt
```
 * Start container (shell)
```bash
docker run --rm -it scala-sbt:latest /bin/ash
```

#### alpine [(official)](https://hub.docker.com/_/alpine/)

* Start container (shell)
```bash
docker run --rm -it alpine /bin/ash
```

#### mongodb [(official)](https://hub.docker.com/_/mongo/)

 * Container exposes port 27017

 * Start container (daemon)
```bash
docker run --rm -p [port_host]:[port_container] -d mongo:latest
docker run --rm -p 27018:27017 -d mongo:latest
```

 * Start container (daemon) with WiredTiger engine
```bash
docker run --rm -p [port_host]:[port_container] -d mongo:latest --storageEngine wiredTiger
```

 * Start container (daemon) with a host directory as container data volume
  * Note: we use /data/db as mongo writes by default to that location
```bash
docker run --rm -p [port_host]:[port_container] -v [path_host]:[path_container] -d mongo:latest
docker run --rm -p 27018:27017 -v /Users/nicolasaubry/Devs/data/mongo/local:/data/db -d mongo:latest
```

 * Open mongo client (from container)
```bash
docker exec -i [image_id_or_name] mongo:latest
```

#### redis [(official)](https://hub.docker.com/_/redis/)

 * Container exposes port 6379

 * Start container (daemon)
```bash
docker run --rm -p [port_host]:[port_container] -d redis:latest
docker run --rm -p 6380:6379 -d redis:latest
```

#### Links
 * Docker cheat sheet: [https://github.com/wsargent/docker-cheat-sheet]
