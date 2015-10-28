Docker Image for [dtinth/ttycast](https://github.com/dtinth/ttycast)
====

How to use
----

```console
$ git clone https://github.com/yokogawa-k/docker-ttycast.git
$ cd docker-ttycast
$ docker build -t yokogawa/ttycast .
$ docker run -d -p 13377:13377 -v ${PWD}:/work yokogawa/ttycast
$ reset && ttyrec ttycast
```

Access host:13377 with browser.

docker-compose
----

```console
$ docker-compose up -d
$ docker-compose logs
```

Size
----

use `docker run -e "TERMSIZE=LINExCOLS"`.

100x30

```
$ docker run -d -e "TERMSIZE=100x30" -p 13377:13377 -v ${PWD}:/work yokogawa/ttycast
```

terminal size.

```
$ docker run -d -e "TERMSIZE=$(tput cols)x$(tput lines)" -p 13377:13377 -v ${PWD}:/work yokogawa/ttycast
```

