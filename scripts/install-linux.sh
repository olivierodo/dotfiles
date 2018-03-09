#!/bin/sh

echo "Installation special Linux"

if hash docker 2>/dev/null; then
  docker pull node:latest   
  docker pull mongo:latest   
else
  echo "Please install docker to continue"
  exit 1
fi
