#!/bin/bash
ROLE=${1:-app}
exec mitamae local "$@" --node-yaml="nodes/$ROLE.yml" entrypoint.rb
