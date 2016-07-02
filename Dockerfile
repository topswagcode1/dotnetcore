FROM microsoft/dotnet:1.0.0-core

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 8080
ENTRYPOINT ["dnx", "-p", "project.json", "kestrel"] 