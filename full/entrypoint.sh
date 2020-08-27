#!/bin/sh
set -e

if [ -n "${TF_TOKEN}" ] ; then
  if [ -z "${TF_HOSTNAME}" ] ; then
    TF_HOSTNAME="app.terraform.io"
  fi

  cat > "${HOME}/.terraformrc" <<EOF
credentials "${TF_HOSTNAME}" {
  token = "${TF_TOKEN}"
}

EOF
fi

exec "$@"
