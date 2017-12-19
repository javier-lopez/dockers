# Hygieia, devops monitoring dashboard

## Overview

Hygieia is a single, configurable, easy-to-use dashboard to visualize near real-time status of the entire delivery pipeline. This directory contain a simple hygeia setup:

  - hygieia-api
  - hygieia-ui
  - mongodb

<p align="center">
<img src="http://www.capitalone.io/Hygieia/media/images/architecture.png" alt="diagram"/>
</p>

## Usage

The described infraestructure requires a docker swarm cluster, use https://play-with-docker.com if no local environment has been setup.

### Deploy services

```
$ docker stack deploy -c hygieia.yml hygieia
```

Go to [http://localhost:8088](http://localhost:8088) to open the default hygieia site. Create dashboards as desired.

