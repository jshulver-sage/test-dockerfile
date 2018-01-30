FROM ubuntu:16.04

COPY . .
RUN apt-get update && apt-get install -y \
  git \
  wget
RUN ["wget", "https://github.com/jshulver-sage/test-dockerfile/releases/download/0.1.0/release.tgz"]
RUN ["find", "."]

ENTRYPOINT ["/app-repo/bin/release/netcoreapp2.0/publish/dotnet-core-hello-world.dll"]
