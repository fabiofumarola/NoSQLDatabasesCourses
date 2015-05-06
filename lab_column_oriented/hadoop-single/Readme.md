HBase Single Node
-----------------

1.	we will start from Ubuntu:latest
2.	It requires the installation of the JDK
3.	The setup of etc/hosts

Steps
-----

### 1. Build the images

Go to the folder containing the *Dockerfile* and run

```bash

 docker build --tag=hbase:single ./

```

### 2. run the images

```bash

docker run –d –p 2181:2181 -p 60010:60010 -p 60000:60000 -p 60020:60020 -p 60030:60030 –h hbase-single --name=hbase_single hbase:single

```

### Notes

1.	the parameter -h set the container hostname
2.	if you use boot2docker or docker-machine (non linux os!!!), add an entry to etc/hosts

```bash

sudo nano private/etc/hosts

and add <ip docker machine> hbase-single
```

### 3. connect to the image

```bash

docker exec -it hbase_single bash

```
