FROM quay.io/kairos/fedora:${FEDORA_VERSION:-40}-standard-amd64-generic-${KAIROS_VERSION:-v3.5.3}-k3s-${K3S_VERSION:-v1.33.4}-k3s1 

RUN dnf install -y iscsi-initiator-utils

RUN envsubst 'iscsi-${VERSION:-1}' </etc/os-release
