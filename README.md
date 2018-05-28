# linux-buildenv

[![CircleCI Build Status][circleci-badge]][circleci-link]
[![License: GPL v2][license-badge]][license-link]

[circleci-badge]:   https://circleci.com/gh/pashinov/linux-buildenv.svg?style=shield
[circleci-link]:    https://circleci.com/gh/pashinov/linux-buildenv
[license-badge]:    https://img.shields.io/badge/License-GPL%20v2-blue.svg
[license-link]:     https://github.com/pashinov/linux-buildenv/blob/master/LICENSE

Creating a custom linux images for various platforms into a Docker Container

#### Support platforms
* Raspberry Pi 3

## How to use it

1. Build an Docker image from a Dockerfile
    ```
    $ docker build -t linux-buildenv .
    ```

2. Create a new container
    ```
    $ docker create --name fw --volume ${PWD}:/home/develop/linux-buildenv --interactive --tty linux-buildenv:latest
    ```

3. Start a container
    ```
    $ docker start fw
    ```

4. For example run a building script for create Raspberry Pi 3 image in a running container
    ```
    $ docker exec fw sh /home/develop/linux-buildenv/raspberrypi3/Makeit
    ```
