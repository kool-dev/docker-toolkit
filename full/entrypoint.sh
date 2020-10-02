#!/bin/sh
set -e

if [ -n "${TF_TOKEN}" ] ; then
  cat > "${HOME}/.terraformrc" <<EOF
credentials "${TF_HOSTNAME}" {
  token = "${TF_TOKEN}"
}

EOF
fi

if [ -n "${KUBECONFIG_NAME}" ] && [ ! -f /root/.kube/config ] ; then
  aws eks --region "${AWS_DEFAULT_REGION}" update-kubeconfig --name "${KUBECONFIG_NAME}"
fi

exec "$@"
