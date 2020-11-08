FROM golang:1.15

RUN mkdir -p /src
RUN cd /src && git clone https://github.com/leonid-shevtsov/split_tests.git
RUN cd /src/split_tests && \
  make release-linux && \
  gunzip build/split_tests.linux.gz
RUN cp /src/split_tests/build/split_tests.linux /usr/bin/split_tests
COPY entrypoint.bash /entrypoint.bash

ENTRYPOINT [ "/entrypoint.bash" ]
