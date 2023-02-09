# docker-mssql-arm

Configured docker container for running mssql on Apple Silicon (Intel is also supported)

Also may download AdventureWorks2017 and integrate it inside docker container automatically

## Prerequisites

1. **Docker**
    1. Download from [official site](https://www.docker.com)
    2. Go to *Settings -> Features in development -> Use Rosetta for x86/amd64 emulation on Apple Silicon*
2. **wget** ( only if downloading AdventureWorks2017 )
    - run (` $ brew install wget `) if you are using homebrew
3. **MacOS Venture for Rosetta 2 support**
4. **Rosetta 2**
    - sometimes need to be installed with (` $ softwareupdate --install-rosetta `) command

> Skip step 3 and 4, if you are using Intel

## Building and running

1. Clone this repository and run (` $ ./build.sh `)
    - You could optianaly download AdventureWorks2017
2. Using any database client (e.g. DataGrip) connect to database
    - Port: 1433
    - User: sa
    - Password: YourStrongPassw0rd (or your own one)

## Changing password

1. Open in any text editor file *./Docker/docker-compose.yaml*
2. Update `SA_PASSWORD=YourStrongPassw0rd` with your own password (like `SA_PASSWORD=MyNewAwesomePassw0rd`)

> The password must be at least 8 characters long and contain characters from three of the following four sets: Uppercase letters, Lowercase letters, Base 10 digits, and Symbols

## Start / Stop container

Stop container: ` docker-compose -f ./Docker/docker-compose.yaml stop `

Start container: ` docker-compose -f ./Docker/docker-compose.yaml start `

**NOTE:** using this two command will **not** erase data from db

## Removing

Remove container: ` docker-compose -f ./Docker/docker-compose.yaml down `
