FROM microsoft/dotnet

ARG application_name=dotnet-core-hello-world
ENV application_name_env=$application_name
WORKDIR /dotnetapp
COPY . .
ENTRYPOINT ["dotnet", "out/dotnet-core-helloworld.dll"]
