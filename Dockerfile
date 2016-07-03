FROM microsoft/dotnet:1.0.0-preview2-sdk

COPY . /app
WORKDIR /app/app
RUN ["dotnet", "restore"]

ENTRYPOINT ["dotnet", "run"] 