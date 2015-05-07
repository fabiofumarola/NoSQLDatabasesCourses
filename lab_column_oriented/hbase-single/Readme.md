HBase Single Node
-----------------

we start from the image java:8-jdk

Steps
-----

### 1. Build the images

Go to the folder containing the *Dockerfile* and run

```bash

 docker build --tag=wheretolive/hbase:single ./

```

### 2. run the images

```bash

docker run -d -p 2181:2181 -p 60010:60010 -p 60000:60000 -p 60020:60020 -p 60030:60030 --name hbase -h hbase wheretolive/hbase:single



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

docker exec -it hbase bash

```
