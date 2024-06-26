#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null https://globo.com)

echo 'Status Code: ' $resposta_http

