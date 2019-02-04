.PHONEY: build schema-example run-example

include default.properties

build:
	docker build --build-arg c7n_version=$(c7n.version) -t $(docker.image-name):$(c7n.version) .

schema-example:
	docker run --rm -it $(docker.image-name):$(c7n.version) schema aws.sns

run-example:
	docker run --rm -v $$PWD:/workdir -it $(docker.image-name):$(c7n.version) run -s output

