# Dockerizing this app — quick steps

1. Inspect the app to confirm runtime:
   - Node.js: package.json present
   - Python: requirements.txt / pyproject.toml
   - .NET: *.csproj
   - Java: pom.xml / build.gradle

2. Build image (example for Node):
   - docker build -t demo-app:local .

3. Run container:
   - docker run --rm -p 3000:3000 --env-file .env demo-app:local

4. Using docker-compose (recommended for dev):
   - docker-compose up --build

Notes to adapt:
- Python: replace Dockerfile build commands with pip install and change CMD to python app.py / gunicorn.
- .NET: use mcr.microsoft.com/dotnet/sdk and dotnet publish / dotnet <dll>.
- Expose and map the correct PORT and mount volumes only in development to avoid overwriting production node_modules.
# Dockerizing this app — quick steps

1. Inspect the app to confirm runtime:
   - Node.js: package.json present
   - Python: requirements.txt / pyproject.toml
   - .NET: *.csproj
   - Java: pom.xml / build.gradle

2. Build image (example for Node):
   - docker build -t demo-app:local .

3. Run container:
   - docker run --rm -p 3000:3000 --env-file .env demo-app:local

4. Using docker-compose (recommended for dev):
   - docker-compose up --build

Notes to adapt:
- Python: replace Dockerfile build commands with pip install and change CMD to python app.py / gunicorn.
- .NET: use mcr.microsoft.com/dotnet/sdk and dotnet publish / dotnet <dll>.
- Expose and map the correct PORT and mount volumes only in development to avoid overwriting production node_modules.

