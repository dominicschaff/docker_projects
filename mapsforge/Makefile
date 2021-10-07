args = run -it -v "${shell pwd}/mapsforge:/root/mapsforge" -e JAVACMD_OPTIONS=-Xmx12G -e GRAPH_CREATION=true -e POI_CREATION=false -e MAP_CREATION=false mapsforge:latest

build:
	docker build --tag mapsforge .

run-shell:
	docker ${args} bash

run-sa:
	docker ${args} africa/south-africa-and-lesotho ram en

clean:
	sudo rm -rf mapsforge

push:
	docker tag mapsforge:latest schaffdev/mapsforge:latest
	docker push schaffdev/mapsforge:latest

