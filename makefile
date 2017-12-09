# manual start openshift
install:
	vagrant up
	vagrant ssh -c 'sudo echo {"insecure-registries" : [ "172.30.0.0/16" ]} > /etc/docker/daemon.json'

start:
	vagrant ssh -c 'sudo oc cluster up --public-hostname="192.168.56.10" --routing-suffix="kawanlabs.com" --host-data-dir=/var/oc/'

stop:
	vagrant ssh -c "sudo oc cluster down"
