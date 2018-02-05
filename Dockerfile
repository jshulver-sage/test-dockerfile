FROM microsoft/dotnet:runtime
EXPOSE 5000:5000
ENV ASPNETCORE_URLS http://+:5000

WORKDIR /work

COPY .. .
RUN set +e && find . && set -e

RUN apt-get update && apt-get install -y \
  git \
  wget

ENTRYPOINT ["dotnet", "release/dotnet-core-hello-world.dll"]
