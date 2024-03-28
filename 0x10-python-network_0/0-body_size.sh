#!/bin/bash
#print size of response from server

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

url=$1

# Get the Content-Length from the headers first (more efficient)
size=$(curl -sI "$url" | awk '/Content-Length:/{print $2}')

# If Content-Length is not available, download the entire body and count bytes
if [[ -z "$size" ]]; then
  size=$(curl -s "$url" | wc -c)
fi

echo "Size of response body: $size bytes"

