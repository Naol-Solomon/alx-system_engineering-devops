#!/bin/bash
#print size of response from server
curl -s -o /dev/null -w "%{size_download}" http://localhost:5000
