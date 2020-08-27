#!/bin/sh
set -e

if [ -n "${TF_TOKEN}" ] ; then
  if [ -e "${TF_SERVICE}" ] ; then
    TF_SERVICE="app.terraform.io"
  fi

  cat > "${HOME}/.terraformrc" <<EOF
credentials "${TF_SERVICE}" {
  token = "${TF_TOKEN}"
}

EOF
fi

exec "$@"
