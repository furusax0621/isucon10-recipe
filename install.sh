#!/bin/bash

# install mitamae if not exists
if ! (type "mitamae" > /dev/null 2>&1); then
  ./bootstrap.sh
fi

ROLE=${ROLE:-app}
exec mitamae local "$@" --node-yaml="nodes/$ROLE.yml" entrypoint.rb
