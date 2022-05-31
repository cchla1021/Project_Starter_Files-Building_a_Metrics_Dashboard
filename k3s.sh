#!/bin/bash
echo "**** Begin installing k3s"

#Install
#curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.19.5+k3s1 --write-kubeconfig-mode 6443 sh -
curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 6443
echo "**** End installing k3s"

#kubectl proxy --address='0.0.0.0' /dev/null &
