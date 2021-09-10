build:
	docker build --tag port_check .

build-multiarch:
	docker buildx build --push \
		--platform linux/arm64/v8,linux/amd64 \
		--tag schaffdev/port_check:buildx-latest .

run:
	docker run \
		-e CHECK_HOST=$(CHECK_HOST) \
		-e CHECK_PORT=$(CHECK_PORT) \
		port_check

test:
	docker run -e CHECK_HOST=google.com -e CHECK_PORT=443 port_check
	docker run -e CHECK=google.com:443 port_check
push:
	docker tag port_check:latest schaffdev/port_check:latest
	docker push schaffdev/port_check:latest
