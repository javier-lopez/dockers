FROM ubuntu:18.04

ENV VERSION VERSION_REPLACE_ME

RUN set -x && apt-get update && apt-get install -y curl
RUN set -x \
    && curl -sL https://github.com/BTCPrivate/electrum-btcp/archive/P!${VERSION}.tar.gz |tar xvz \
    && mv electrum-btcp-P-${VERSION} Electrum-BTCP-${VERSION}/ \
    && cd Electrum-BTCP-${VERSION}/ \
    && apt-get update \
    && apt-get install -y $(grep -vE "^\s*#" packages.txt  | tr "\n" " ") \
    && pip3 install -r requirements.txt \
    && pip3 install pyblake2 \
    && protoc --proto_path=lib/ --python_out=lib/ lib/paymentrequest.proto \
    && pyrcc5 icons.qrc -o gui/qt/icons_rc.py \
    && ./contrib/make_packages \
    && cd / && tar zcf Electrum-BTCP-${VERSION}.tar.gz Electrum-BTCP-${VERSION}

WORKDIR /Electrum-BTCP-${VERSION}

ENV DISPLAY :0

CMD ./electrum-btcp
