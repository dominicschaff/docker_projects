args = run -it -v "${shell pwd}/mapsforge:/root/mapsforge" -e JAVACMD_OPTIONS=-Xmx32G mapsforge:latest

build:
	docker build --tag mapsforge:latest .

run-shell:
	docker ${args} bash

run-sa:
	docker ${args} africa/south-africa-and-lesotho ram en

run-nam:
	docker ${args} africa/namibia ram en

clean:
	sudo rm -rf mapsforge

push:
	docker tag mapsforge:latest schaffdev/mapsforge:latest
	docker push schaffdev/mapsforge:latest

