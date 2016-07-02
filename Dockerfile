FROM microsoft/dotnet:1.0.0-preview2-sdk

COPY . /app
WORKDIR /app/app
RUN ["dotnet", "restore"]

EXPOSE 8080
ENTRYPOINT ["dotnet", "run"] 