DOCKER_REPO=kernsuite/lwimager:dev

.PHONY: build clean

all: run

build:
		docker build -t ${DOCKER_REPO} .

clean:
	docker rmi ${DOCKER_REPO}

upload: build
	docker push ${DOCKER_REPO}

run: build
	#docker run -ti ${DOCKER_REPO}
	kliko-run ${DOCKER_REPO} --ms /input/wsrt.ms
