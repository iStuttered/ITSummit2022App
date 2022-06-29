FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["ITSummit2022App.csproj", "./"]
RUN dotnet restore "ITSummit2022App.csproj"
COPY . .
WORKDIR "/src/"
RUN dotnet build "ITSummit2022App.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ITSummit2022App.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
COPY www /app/www

ENTRYPOINT ["dotnet", "ITSummit2022App.dll"]
