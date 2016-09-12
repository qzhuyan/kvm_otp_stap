all: vmup

seeddisk:  user-data meta-data
	genisoimage  -output seed.iso -volid cidata -joliet -rock user-data meta-data

vmup: seeddisk
	./start

install: install-systemtap install-stap-otp

install-systemtap:
	 ansible-playbook  -u cloud-user --private-key ~/.ssh/id_dsa -i ./host playbooks/systemtap.yml

kerl:
	wget http://raw.githubusercontent.com/kerl/kerl/master/kerl

install-stap-otp: kerl
	 ansible-playbook  -u cloud-user --private-key ~/.ssh/id_dsa -i ./host playbooks/build_systap_otp.yml

pipvir:
		virtualenv -p /usr/bin/python2.7 venv && \
	source venv/bin/activate && pip install ansible

centosvmup:
	./start 4445 centos_rootfs.qcow2

rhelvmup:
	./start 4444 rhel_rootfs.qcow2
