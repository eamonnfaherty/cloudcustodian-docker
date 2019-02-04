# cloudcustodian-docker

Run CloudCustodian in docker


update ```default.properties``` to set ```c7n.version``` and ```docker.image-name``` as you want

Build the image:
```bash
make build
``` 

or just use the ```docker build``` command yourself.

```bash
docker build --build-arg c7n_version=0.8.40 -t cloudcustodian:0.8.40 .
```

Then you can run it for the ```schema``` command:
```bash
docker run --rm -it cloudcustodian:0.8.40 schema aws.sns
```

Or you can run the ```run``` command:
```bash
docker run --rm -v $PWD:/workdir -it cloudcustodian:0.8.40 run -s output
```

Make sure you mount your directory into ```/workdir``` so you can use your policy files.  To add your 
AWS credentials I would recommend using an environmental variable:
```bash
docker run --rm -v $PWD:/workdir -e AWS_SECRET_KEY=dfsfsdfsdfdsfsdfdf -e AWS_OTHER_SECRET=fdhfhdsfshdifhsd -it cloudcustodian:0.8.40 run -s output
```

