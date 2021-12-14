# Requirements

Install the following dependencies:
- [Docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository): ^20.x

# Deployment

1. Add required permission to execute the main script:
```shell
sudo chmod u+x run.sh
```
2. Run the script:
```shell
./run.sh
```
###### Notice
> All databases will be stored in `/var/lib/docker/volumes/mongodbdata/_data` folder permanently. By default, you will not be able to get access to that folder: you have to add "read" credentials.

# Connection

Parameter | Value
--- | ---
host | 0.0.0.0
port | 27018
username | root
password | 1

Also, you can get the manual access:
1. through the docker instance:
```shell
docker exec -it docker-mongodb-1 /bin/bash -c "mongo --username root --password 1"
```
2. using locally installed `mongo`:
```shell
mongo --username root --password 1 --port 27018
```
