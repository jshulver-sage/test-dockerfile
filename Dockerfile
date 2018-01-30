FROM microsoft/dotnet

EXPOSE 80:5000
WORKDIR /dotnetapp
COPY . .
RUN ["tar", "-xzf"]
ENTRYPOINT ["/app-repo/bin/release/netcoreapp2.0/publish/dotnet-core-hello-world.dll"]
