#!/bin/bash

#Script to stop Minecraft Server

Script=$(readlink -f $0)
ServerPath=`dirname $Script`
PIDFile="$ServerPath/minecraft.pid"
PID="$(cat $PIDFile)"

# Send terminate signal to jvm
kill $PID

