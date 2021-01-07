build:
	docker build --tag port_check .

run:
	docker run \
		-e CHECK_HOST=$(CHECK_HOST) \
		-e CHECK_PORT=$(CHECK_PORT) \
		port_check

push:
	docker tag port_check:latest schaffdev/port_check:latest
	docker push schaffdev/port_check:latest
