if [ ! -f ./Docker/backup/adventureworks.bak ]; then
    echo "Downloading AdventureWorks ..."
    mkdir ./Docker/backup 2>/dev/null
    wget https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak \
    -O ./Docker/backup/adventureworks.bak -q
    echo "Download finished"
else
    echo "AdventureWorks was already downloaded"
fi

echo "Building Docker image and starting container"
cd ./Docker
docker-compose up --build -d

echo "Waiting for SQL Server to start"
sleep 30

echo "Restoring AdventureWorks database"
docker exec -it mssql /bin/bash /startup.sh