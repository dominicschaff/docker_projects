build:
	docker build --tag atlassian_docker .

shell:
	docker run -it atlassian_docker bash

push:
	docker tag atlassian_docker:latest schaffdev/atlassian_docker:2
	docker push schaffdev/atlassian_docker:2
