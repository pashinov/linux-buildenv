# Linux-buildenv

[![Build Status][circleci-badge]][circleci-link]
[![License][license-badge]][license-link]

[circleci-badge]:   https://circleci.com/gh/pashinov/linux-buildenv.svg?style=svg
[circleci-link]:    https://circleci.com/gh/pashinov/linux-buildenv
[license-badge]:    https://img.shields.io/badge/License-GPL%20v2-blue.svg
[license-link]:     https://github.com/pashinov/linux-buildenv/blob/master/LICENSE

## What is it?
A build system based on Buildroot for creating a custom linux images for various embedded platforms.

#### Supported platforms
* RaspberryPi 3

## How to use it

1. Build docker image
    ```
    $ docker build -t linux-buildenv .
    ```

2. Create docker container
    ```
    $ docker create --name fw --volume ${PWD}:/home/develop/linux-buildenv --interactive --tty linux-buildenv:latest
    ```

3. Start docker container
    ```
    $ docker start fw
    ```

4. Run build for RaspberryPi 3 platform
    ```
    $ docker exec fw sh /home/develop/linux-buildenv/raspberrypi3/Makeit
    ```
