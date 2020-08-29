#!/bin/sh
set -e

if [ -n "${TF_TOKEN}" ] ; then
  cat > "${HOME}/.terraformrc" <<EOF
credentials "${TF_HOSTNAME}" {
  token = "${TF_TOKEN}"
}

EOF
fi

exec "$@"
