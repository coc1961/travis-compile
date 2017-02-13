FROM donkey1961/travis-build

MAINTAINER Carlos Castro

RUN  gem install travis
RUN  apt-get update && apt-get install dos2unix &&  apt-get clean && apt-get purge

RUN echo y | travis > /dev/null

RUN ln -s  `pwd`  ~/.travis/travis-build

WORKDIR /root/build

VOLUME /root/build

ADD travis.sh /bin/travis.sh

ENTRYPOINT ["/bin/travis.sh"]
