# Dockerfile of pre-installed sbt


Dockerfile of [sbt](http://www.scala-sbt.org/), which is a build tool for Scala, Java, and more.

Specific version is pre-installed for fast future build.

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

## How to build by `Dockerfile`

Here is an example.

```bash
cd <this repo>
docker build -t sbt:0.13.8 ./0.13.8/
```

But buildation is automated.