args = run -it -v "${shell pwd}/mapsforge:/root/mapsforge" -e JAVACMD_OPTIONS=-Xmx42G mapsforge:latest

build:
	docker build --tag mapsforge:latest .

run-shell:
	docker ${args} bash

run-eu:
	docker ${args} europe/italy ram en
	docker ${args} europe/netherlands ram en
	docker ${args} europe/germany ram en
	docker ${args} europe/portugal ram en
	docker ${args} europe/luxembourg ram en

run-africa:
	docker ${args} africa/south-africa-and-lesotho ram en
	docker ${args} africa/namibia ram en
	docker ${args} africa/botswana ram en
	docker ${args} africa/zimbabwe ram en
	docker ${args} africa/madagascar ram en
	docker ${args} africa/mauritius ram en
	docker ${args} africa/mozambique ram en
	docker ${args} africa/swaziland ram en

run-australia:
	docker ${args} australia-oceania/australia ram en

run-other:
	docker ${args} antartica ram en

maps: run-africa run-australia run-other run-eu

clean:
	sudo rm -rf mapsforge

push:
	docker tag mapsforge:latest schaffdev/mapsforge:latest
	docker push schaffdev/mapsforge:latest

