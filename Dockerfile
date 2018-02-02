FROM microsoft/dotnet:runtime
EXPOSE 5000:9200
COPY . .
RUN apt-get update && apt-get install -y \
  git \
  wget
RUN ["sh", "-c", "wget https://github.com/jshulver-sage/test-dockerfile/releases/download/$(cat version)/release.tgz"]
RUN tar -xzf release.tgz

ENTRYPOINT ["dotnet", "app-repo/bin/release/netcoreapp2.0/publish/dotnet-core-hello-world.dll"]
