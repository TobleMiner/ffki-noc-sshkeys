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
        password=$(/usr/bin/openssl rand -base64 32)
        cat << EOF
user { "${username}":
  ensure => present,
  groups => ['sudo'],
  shell => '/bin/bash',
  managehome => true,
  require => [ Package['sudo'] ];
}

file { '/home/${username}/.ssh/':
  ensure => directory,
  owner => '${username}',
  group => '${username}',
  mode => '0700',
  require => [ User['${username}'] ];
}

ssh_authorized_key { "${key_name}":
  user => '${username}',
  type => '${key_type}',
  key  => '${key}',
  require => [ File['/home/${username}/.ssh/'] ];
}

exec { "${username}_password":
  command => "/bin/bash -c \"/usr/sbin/chpasswd <<< '${username}:${password}'\"",
}

file { '/home/${username}/password':
  ensure => file,
  owner => '${username}',
  group => '${username}',
  mode => '0700',
  content => "Change this password asap!\npassword: ${password}\n",
  require => [ User['${username}'] ];
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
