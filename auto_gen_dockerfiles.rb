require './sbt_versions'

def sbt_docker_str(sbt_version)
<<EOS
# ---- Create a SBT (#{sbt_version}) on Ubuntu Environment ----

FROM ubuntu:16.04
LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

# Install JDK 8
RUN apt update
RUN apt install -y software-properties-common
RUN apt-add-repository ppa:openjdk-r/ppa
RUN apt update && apt install -y openjdk-8-jdk
RUN java -version

# Install sbt
RUN apt -y install apt-transport-https
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt update && apt install -y sbt
RUN apt install -y bc

# Install specific sbt version
# (NOTE: this shows sbt version, but it installs sbt as side effect)
RUN sbt -sbt-version #{sbt_version} sbtVersion

# Clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Done!
EOS
end


SBT_VERSIONS.each{|sbt_version|
    docker_str = sbt_docker_str(sbt_version)
    dir_path   = sbt_version
    Dir.mkdir(dir_path) if !Dir.exists?(dir_path)
    dockerfile_path = File.join(dir_path, "Dockerfile")
    File.write(dockerfile_path, docker_str)
    puts("'#{dockerfile_path}' generated")
}
