#!/bin/bash
BODY=$(cat test.csv | sed -n '1!p' | awk 'BEGIN { FS = "," } ; {print$1","$2","$4","$3","$15","$9}')
curl -X PUT -H "Content-Type: text/plain" -d "${BODY}" "http://localhost:8080/dumpIris"
echo "\n"