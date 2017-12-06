# manual start openshift
start:
	vagrant ssh -c "oc cluster up --public-hostname=\"192.168.56.10\" --routing-suffix=\"kawanlabs.com\" --host-data-dir=/var/oc/"
