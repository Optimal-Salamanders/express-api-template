#!/bin/bash

API="http://localhost:4741"
URL_PATH="/uploads"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--data '{
    "upload": {
      "title": "'"${TITLE}"'",
      "url": "'"${URL}"'"
    }
  }'

echo