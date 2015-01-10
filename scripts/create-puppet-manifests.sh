#!/bin/bash

BASEDIR=$(realpath "$(dirname "$0")/../")

case $1 in
  generic)
    for pub in $(find "${BASEDIR}/generic/" -maxdepth 1 -name "*.pub"); do
      if [ -f "$pub" ]; then
        username=$(basename "$pub" ".pub")
        key=$(head "$pub" | cut -s -d ' ' -f 2)
        key_type=$(head "$pub" | cut -s -d ' ' -f 1)
        key_name=$(head "$pub" | cut -s -d ' ' -f 3)
        cat << EOF
user { "${username}":
  ensure => present,
  groups => ['sudo'],
  require => [ Package['sudo'] ];
}

ssh_authorized_key { "${key_name}":
  user => '${username}',
  type => '${key_type}',
  key  => '${key}';
}
EOF
      fi
    done
cat << EOF
package { 'sudo': ensure=>installed; }
EOF
    ;;
  *)
    echo "Usage $(basename "$0") [generic]"
    ;;
esac
