FROM microsoft/aspnet:1.0.0-rc1-update1-coreclr

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 8080
ENTRYPOINT ["dnx", "-p", "project.json", "kestrel"]git 