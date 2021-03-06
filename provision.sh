#!/usr/bin/env bash
# prerequisuites
yum update -y

# install docker with persistent data setting
yum remove docker docker-common docker-selinux docker-engine
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum update -y
yum install -y docker-ce

# add registry
mkdir -p /etc/docker
echo '{"insecure-registries" : [ "172.30.0.0/16" ]}' > /etc/docker/daemon.json
# tee /etc/docker/daemon.json >/dev/null <<EOF
#   {
#     "insecure-registries" : [ "172.30.0.0/16" ]
#   }
# EOF
systemctl restart docker
systemctl enable docker

# disable ipV6
sysctl net.bridge.bridge-nf-call-iptables=1
sysctl net.bridge.bridge-nf-call-ip6tables=1

# add hosts
echo "127.0.0.1 kawanlabs.com" >> /etc/hosts

# install openshift
yum install -y centos-release-openshift-origin
yum install -y wget git net-tools bind-utils iptables-services bridge-utils bash-completion origin-clients
