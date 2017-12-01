# Dockerfile of pre-installed sbt

[![Docker Automated build](https://img.shields.io/docker/automated/nwtgck/pre-installed-sbt.svg)](https://hub.docker.com/r/nwtgck/pre-installed-sbt/)

Dockerfile of pre-installed [sbt](http://www.scala-sbt.org/).

## Purpose

The purpose is for faster future docker-build by pre-installed sbt.

## Available sbt versions

`0.13.6` ~ `1.0.4`

## Docker-Pull

Here is an example of pull.

```bash
docker pull nwtgck/pre-installed-sbt:1.0.4
```

## How to generate `Dockerfile`s

```bash
cd <this repo>
ruby auto_gen_dockerfiles.rb
```

## How to clean up the `Dockerfile`s

```bash
cd <this repo>
ruby clean_dockerfiles.rb
```

## How to build by `Dockerfile` manually

Here is an example.

```bash
cd <this repo>
docker build -t sbt:0.13.8 ./0.13.8/
```

But buildation is automated.