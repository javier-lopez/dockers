#!/bin/sh

docker run -ti -v `pwd`:/usr/src/app -w /usr/src/app jlpz/react-native /bin/bash -c "create-react-native-app $@"
