# ubuntu-cppdev-docker

Dockerfile which installs commonly used libraries and tools for C++ development on top of Ubuntu.

The image is automatically build using [Docker Cloud](https://cloud.docker.com/swarm/nioshd/repository/docker/nioshd/ubuntu-cppdev/general) and gets then deployed to [Docker Hub](https://hub.docker.com/r/nioshd/ubuntu-cppdev/) as `nioshd/ubuntu-cppdev:latest`.


## Usage (tested on Ubuntu 16.04)

Simply download the image (i.e., `docker pull nioshd/ubuntu-cppdev`) from docker hub and launch it with the desired flags. Running `bash` in a temporary container, where the current home is mounted as `/mnt/<username>`, and with the same user ID and group ID as the current user, can for example be achieved using the following command.

```
$ docker run -ti --rm -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro --user=$(id -u):$(id -g) -v ${HOME}:/mnt/${USERNAME} -w /mnt/${USERNAME} nioshd/ubuntu-cppdev bash

```

If graphical applications should be run inside the container, additionally the xserver has to be exposed to the container. This can be achieved by adding the following paramerters to the `docker run` command:

```
-h $(hostname) -e DISPLAY -e XAUTHORITY -v /tmp/.X11-unix:/tmp/.X11-unix -v ${XAUTHORITY}:${XAUTHORITY}
```
