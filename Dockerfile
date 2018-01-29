FROM microsoft/dotnet

EXPOSE 80:5000
WORKDIR /dotnetapp
COPY . .
ENTRYPOINT ["dotnet", "out/dotnet-core-helloworld.dll"]
