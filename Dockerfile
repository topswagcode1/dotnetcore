FROM microsoft/dotnet:1.0.0-core

COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]

EXPOSE 8080
ENTRYPOINT ["dnx", "-p", "project.json", "kestrel"] 