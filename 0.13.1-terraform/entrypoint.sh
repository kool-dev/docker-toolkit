#!/bin/sh
set -e

if [ -n "${TF_CONF_BASE64}" ] ; then
  echo "${TF_CONF_BASE64}" | base64 -d > "${HOME}/.terraformrc"
fi

exec "$@"
