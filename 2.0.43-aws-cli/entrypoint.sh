#!/bin/sh
set -e

if [ -n "${AWS_CONF_BASE64}" ] ; then
  mkdir -p "${HOME}/.aws"
  echo "${AWS_CONF_BASE64}" | base64 -d > "${HOME}/.aws"/config
fi

if [ -n "${AWS_CRED_BASE64}" ] ; then
  mkdir -p "${HOME}/.aws"
  echo "${AWS_CRED_BASE64}" | base64 -d > "${HOME}/.aws"/credentials
fi

exec "$@"
