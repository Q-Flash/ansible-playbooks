#!/bin/bash

#Start Minecraft server command

Script=$(readlink -f $0)
ServerPath=`dirname $Script`
JarFile="$ServerPath/server.jar"
LogDir="$ServerPath/logs"
LogFile="$LogDir/start_command_$(date +"%Y-%m-%d_%H.%M.%S").log"
PIDFile="$ServerPath/minecraft.pid"

cd "$ServerPath"

if [ ! -d "$LogDir" ]; then
  mkdir "$LogDir"
fi

nohup java -Xms1g -Xmx3G -jar $JarFile --nogui > "$LogFile" 2>&1 &

# Save pid to file
echo $! > "$PIDFile"
