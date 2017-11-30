# Dockerfile of pre-installed sbt


Dockerfile of [sbt](http://www.scala-sbt.org/), which is a build tool for Scala, Java, and more.

Specific version is pre-installed for fast run

## How to generate `Dockerfile`s

```bash
cd <this repo>
ruby auto-gen-dockerfile.rb
```

## How to build by `Dockerfile`

Here is an example

```bash
cd <this repo>
docker build -t sbt:0.13.8 ./0.13.8/
```