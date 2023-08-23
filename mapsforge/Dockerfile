from ubuntu:latest

ENV OSMOSIS_HOME /usr
ENV JAVACMD_OPTIONS -Xmx8G
ENV TAG_VALUES true
ENV GRAPH_CREATION false

RUN apt update \
      && apt install -y osmosis zip curl wget python3 gdal-bin \
      && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN curl -L 'https://github.com/mapsforge/mapsforge-creator/archive/refs/heads/master.zip' -o /tmp/master.zip \
      && unzip /tmp/master.zip -d /mapsforge \
      && mv /mapsforge/mapsforge-creator-master/* /mapsforge/ \
      && rm -r /tmp/master.zip /mapsforge/mapsforge-creator-master \
      && mkdir -p /root/programs/graphhopper/ \
      && curl 'https://repo1.maven.org/maven2/com/graphhopper/graphhopper-web/5.3/graphhopper-web-5.3.jar' -o /root/programs/graphhopper/graphhopper-web-1.0.jar \
      && mkdir -p /root/.openstreetmap/osmosis/plugins/ \
      && curl -L 'https://repo1.maven.org/maven2/org/mapsforge/mapsforge-poi-writer/0.20.0/mapsforge-poi-writer-0.20.0-jar-with-dependencies.jar' -o /root/.openstreetmap/osmosis/plugins/mapsforge-poi-writer-0.20.0-jar-with-dependencies.jar \
      && curl -L 'https://repo1.maven.org/maven2/org/mapsforge/mapsforge-map-writer/0.20.0/mapsforge-map-writer-0.20.0-jar-with-dependencies.jar' -o /root/.openstreetmap/osmosis/plugins/mapsforge-map-writer-0.20.0-jar-with-dependencies.jar

ENTRYPOINT ["bash", "/mapsforge/map-creator.sh"]
