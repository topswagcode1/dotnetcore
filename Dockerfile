FROM microsoft/dotnet:1.0.0-preview2-sdk

COPY . /app
WORKDIR /app/app
RUN ["dotnet", "restore"]

ARG CONTAINER_PORT=5000
ARG SERVER_URLS=http://*:$CONTAINER_PORT
ENV SERVER.URLS $SERVER_URLS
EXPOSE $CONTAINER_PORT

ENTRYPOINT ["dotnet", "run"] 