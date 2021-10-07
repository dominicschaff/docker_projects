from ubuntu:latest

ENV OSMOSIS_HOME /usr

RUN apt update \
      && apt install -y osmosis zip curl wget python3 gdal-bin \
      && rm -rf /var/lib/{apt,dpkg,cache,log}/

COPY src/* /mapsforge/
RUN curl 'https://repo1.maven.org/maven2/com/graphhopper/graphhopper-web/3.0/graphhopper-web-3.0.jar' -o /mapsforge/graphhopper.jar
RUN mkdir -p /root/.openstreetmap/osmosis/plugins/ \
      && curl -L 'https://search.maven.org/remotecontent?filepath=org/mapsforge/mapsforge-poi-writer/0.16.0/mapsforge-poi-writer-0.16.0-jar-with-dependencies.jar' -o /root/.openstreetmap/osmosis/plugins/mapsforge-poi-writer-0.16.0-jar-with-dependencies.jar \
      && curl -L 'https://search.maven.org/remotecontent?filepath=org/mapsforge/mapsforge-map-writer/0.16.0/mapsforge-map-writer-0.16.0-jar-with-dependencies.jar' -o /root/.openstreetmap/osmosis/plugins/mapsforge-map-writer-0.16.0-jar-with-dependencies.jar

ENTRYPOINT ["bash", "/mapsforge/map-creator.sh"]
