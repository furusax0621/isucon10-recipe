#!/bin/bash
ROLE=${ROLE:-app}
exec mitamae local "$@" --node-yaml="nodes/$ROLE.yml" entrypoint.rb
