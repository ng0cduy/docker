# Create a shared folder
```docker run -it -v share_folder_directory:/shared-folder ubuntu:16.04  bash```

***NOTE: Create a share folder inside first***

## Share data from another docker container ###

``` docker run -it --volumes-from CONTAINER_NAME ubuntu bash ```

## Docker Registries
+ Manage and distribute images
+ Docker offers these for free

    ```docker search image```
## Push to docker hub
 **LOGIN FIRST**
 ``` docker login ```

# Dockerfile
+ Small `program` to create an image
+ Run this program with

    ``` docker build -t name-of-result location_of_the_Dockerfile ```
+ The result will be in your local docker registry
+ Docker can caching with each step => Docker build can skip lines that have not changed since the last build

# Docker syntax

```FROM```
### ADD
+ `ADD` can be add local files:

    ```ADD run.sh /run.sh```

+ Adds the contents of tar archieves:

    ```ADD project.tar.gz /install/```
+ Works with URL:
    ```ADD url /project/ ```
### ENV
+ Set env var
+ Both during the build and when the running the result

```ENV DB_HOST=db.production.example.com```

```ENV DB_PORT=1234```

### ENTRYPOINT

+ Specify the start of the command to run

+ CMD specify the whole command to run

### EXPOSE statement
+ Maps a port into the container
``` EXPOSE 8080 ```

### Volume Statement
+ Define shared or ephemeral volumes
```VOLUME ["/host/path" "/container/path"]```

### WORKDIR
+ Sets the directory the container starts in

### USER
+ Sets which user the container will run as
```USER arthur```
```USER 1000```