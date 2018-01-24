About
-----

[Docker](https://www.docker.com) provides an additional layer of abstraction and automation to package and deploy applications accross several OS platforms. This repository contain custom docker [compose](https://docs.docker.com/compose/) recipes I've been working on, feel free to take what you need.

Usage
-----

    $ cd recipe/

    #on a docker swarm
    $ docker stack deploy -c service.yml service

    #on a single docker node with docker-compose
    $ docker-compose -f service.yml up
