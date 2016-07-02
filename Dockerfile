FROM microsoft/dotnet

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 8080
ENTRYPOINT ["dnx", "-p", "project.json", "kestrel"]git 