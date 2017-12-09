# TRAEFIK + SERVICE APPS

## Overview

Simple infrastructure that consists of a global [traefik](https://github.com/containous/traefik) reverse proxy, plus additional services: nexus / visualizer / echo as backends

<p align="center">
<img src="https://github.com/containous/traefik/blob/master/docs/img/architecture.png" alt="diagram"/>
</p>

## Usage

The described infraestructure requires a docker swarm cluster, use https://play-with-docker.com if no local environment has been setup.

### Deploy services

```
$ docker stack deploy -c traefik.yml traefik
$ docker stack deploy -c nexus.yml nexus
$ docker stack deploy -c visualizer.yml visualizer
$ docker stack deploy -c echo.yml echo
```

### Test services

```
$ while :; do curl --header 'Host: echo.example.com'       http://localhost; sleep 1; done
$ while :; do curl --header 'Host: nexus.example.com'      http://localhost; sleep 1; done
$ while :; do curl --header 'Host: visualizer.example.com' http://localhost; sleep 1; done
```

### Destroy services

```
$ docker stack rm visualizer nexus echo traefik
```
