FROM mcr.microsoft.com/dotnet/core/sdk:2.2.204

COPY . /app
WORKDIR /app

ENV CI=true

RUN dotnet restore -v n
RUN dotnet build --no-restore -v n
CMD dotnet test --no-restore --no-build -v n
