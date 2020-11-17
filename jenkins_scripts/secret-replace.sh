#!/usr/bin/env bash

echo "This script replaces values in a YAML file"

function download {
  mkdir tmp
  wget https://github.com/mikefarah/yq/releases/download/3.4.0/yq_linux_amd64 -O tmp/yq
  chmod +x tmp/yq
}

function replaceLineInYAML {
  tmp/yq w -i $1 $2 $3
}

download
replaceLineInYAML config/settings.yml aws.export_access_key_id "$ACCESS_KEY"
replaceLineInYAML config/settings.yml aws.export_secret_access_key "$SECRET_KEY"
cat config/settings.yml
