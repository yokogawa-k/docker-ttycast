Docker Image for [dtinth/ttycast](https://github.com/dtinth/ttycast)
====

Usage
----

```console
$ git clone https://github.com/yokogawa-k/docker-ttycast.git
$ cd docker-ttycast
$ docker build -t yokogawa/ttycast .
$ docker run -d -p 13377:13377 -v ${PWD}:/work yokogawa/ttycast
$ reset && ttyrec ttyrec
```

Access host:13377 with browser.

fig
----

```console
$ fig up -d
$ fig logs
```

size
----

Please modify ttycast option.
