#!/bin/bash
rm -rf ~/.dolittle
npm i -g @dolittle/cli
mkdir temp
cd temp
dolittle create application MyApplication
dolittle create boundedcontext MyBoundedContext

cd MyBoundedContext/Domain
mkdir Something
dolittle add command MyCommand
dolittle add commandhandler MyCommandHandler MyCommand # Can we skip interactivity and automate it?

cd ..
cd Read

dolittle add readmodel MyReadModel
dolittle add queryfor MyQuery MyReadModel

cd ../..

cd MyBoundedContext/Core
dotnet build
dotnet build
dotnet run

# In parallel to 'dotnet run'
# Sleep for ~3 seconds
# do a curl post command - check for 200 OK
# do a curl

cd ..
rm -rf temp