FROM python:3
RUN apt-get update && apt-get install -y build-essential
RUN git clone https://github.com/snowballstem/snowball && cd snowball && make
COPY driver.c /snowball/runtime
RUN /snowball/snowball /snowball/algorithms/nepali.sbl -o /snowball/runtime/nepalistemmer -ep H_ -utf8
RUN gcc -o /snowball/runtime/nepstem /snowball/runtime/*.c
RUN cd snowball && make dist_libstemmer_python && cd dist/ && mv snowballstemmer*.tar.gz snowballstemmer.tar.gz && tar -xzf snowballstemmer.tar.gz --strip-components=1 && python setup.py install
#ENTRYPOINT ["/snowball/runtime/nepstem"]
