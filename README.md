# WHAT

bring you a vm that has systemtap erlang otp install.

DEPS
- host os: linux
- kvm
- ansible
- internet


# HOW:
1. Download KVM image from 
  
  - ubuntu 
    https://cloud-images.ubuntu.com/

  - centos7
    https://cloud.centos.org/altarch/7/images/

  - AWS Linux 2
    https://cdn.amazonlinux.com/os-images/2.0.20220207.1/kvm/

1. Update image with root password (default: abc123)

  ```sh
   ./fix_password.sh $Image $hostname
  ```
  
1. Start vm
  ```
  ./start $Image
  
  ```

1. to exit 'c-a x'


- TODO
