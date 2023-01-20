#!/bin/bash

OUTPUT=$(curl http://localhost:5000/health)

if [ "$OUTPUT" = "ok" ]; then
  echo "healthy"
  exit 0 # exit status 0 means that the script "succeeds"
else
  echo "unhealthy"
  exit 1  
fi
