Installation Openshift Origin
===

This project show you how to set up Openshift Onrigin on VirtualBox using Vagrant.
![vagrant-openshift](http://www.kawanlabs.com/images/public/openshift-origin.png)

`Openshift` is application lifecycle management functionality and DevOps tooling. Openshift Origin provides a complete open source container application platform.

`Vagrant` is a tool for building and distributing development environments. Development environments made easy.

`VirtualBox` is a tool virtualization, basically general-purpose full virtualizer for x86 hardware.

Requirements
---
In this project i setup environments with 4GB of RAM, 40GB of HDD.
- VirtuialBox [download](https://www.virtualbox.org/wiki/Downloads)
- Vagrant [download](https://www.vagrantup.com/downloads.html)

Download config
==
```
git clone https://github.com/if08017/vagrant-openshift.git
cd vagrant-openshift
```
![vagrant-openshift](http://www.kawanlabs.com/images/public/vagrant-openshift.png)

Installation
---
```
git clone https://www.terraform.io
vagrant up
```
![vagrant-openshift](http://www.kawanlabs.com/images/public/vagrant-openshift-result.png)

Access Openshift Origin
---
``
https://192.168.56.10:8443
``
or
``
https://kawanlabs.com:8443
``
[Optional] manual run
---
```
make start

```
