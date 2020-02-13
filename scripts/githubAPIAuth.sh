##!/usr/bin/env bash
# For quickly running github api commands
curl -H "Authorization: token $1" $2 https://api.github.com$3
