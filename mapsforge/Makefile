args = run -it -v "${shell pwd}/mapsforge:/root/mapsforge" -e JAVACMD_OPTIONS=-Xmx42G mapsforge:latest

build:
	docker build --tag mapsforge:latest .

run-shell:
	docker ${args} bash

run-sa:
	docker ${args} africa/south-africa-and-lesotho ram en

run-nam:
	docker ${args} africa/namibia ram en

run-bot:
	docker ${args} africa/botswana ram en

run-zim:
	docker ${args} africa/zimbabwe ram en

run-eu:
	docker ${args} europe/italy ram en
	docker ${args} europe/netherlands ram en
	docker ${args} europe/germany ram en

maps: run-sa run-nam run-bot run-zim

clean:
	sudo rm -rf mapsforge

push:
	docker tag mapsforge:latest schaffdev/mapsforge:latest
	docker push schaffdev/mapsforge:latest

