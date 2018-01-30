FROM microsoft/dotnet

EXPOSE 80:5000
WORKDIR /dotnetapp
COPY . .
RUN ["find", "."]

RUN ["tar", "-xzf release/release.tgz"]
ENTRYPOINT ["/app-repo/bin/release/netcoreapp2.0/publish/dotnet-core-hello-world.dll"]
