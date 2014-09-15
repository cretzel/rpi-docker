#!/bin/sh
curl -L http://127.0.0.1:4001/v2/keys/backends | python -m json.tool
