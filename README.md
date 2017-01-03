# docker

 * A bunch of docker files, utilities and notes to make my life easier :)

#### scala-sbt
 *  Build image (from dockerfile)
```bash
docker build -t scala-sbt:latest scala-sbt
```
 * Start with interactive shell
```bash
docker run -it scala-sbt:latest /bin/ash
```

#### mongodb [(official)](https://github.com/thepotatofield/text-search/tree/master/binaries)

 * Start daemon
```bash
docker run -p [port_host]:[port_container] -d mongo:latest
docker run -p 27018:27017 -d mongo:latest
```

 * Open an interactive mongo client
```bash
docker exec -i [image_id_or_name] mongo:latest
```

#### redis

#### Links
 * Docker cheat sheet: [https://github.com/wsargent/docker-cheat-sheet]

#### Misc
 * Start alpine with an interactive shell:
```bash
docker run -it --rm alpine /bin/ash
```
