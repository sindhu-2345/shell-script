#!/bin/bash

echo "$1 ,$2,$3"
echo " all variables passed : $@ "
echo " number of variables : $# "
echo " script name : $0 "
echo " present working directory : $PWD "
echo " home directory of current user : $HOME"
echo " which user is running this script : $USER "
echo " processid of current script : $$ "

echo " processid of laast command in background : $! "
