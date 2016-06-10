WHAT

bring you a vm that has systemtap erlang otp install.

DEPS
- host os: linux
- kvm
- ansible
- internet


HOW:
- Update *user-data* with your ssh pub key
- download a rhel kvm guest image and rename *rootfs.qcow2* and put in same dir
- do *make* and wait build finish
- verify login with ssh
  ssh -p 4444 -l cloud-user 127.0.0.1


- TODO
