[Packer](http://packer.io) templates for Linux boxes.

* CentOS 6.6 (Minimal) 64-bit with dev tools for VirtualBox extensions

Clone this GIT repo.

-- You will need to first sign up for an account on Atlas: https://atlas.hashicorp.com

-- Change the Atlas username/user to whatever yours is

-- Generate your token on the Atlas portal and export it as an environment variable

-- Execute "packer build packer build CentOS-6.6-template-Atlas-v1.json"

This builds in both VirtualBox and VMware Fusion, to specify one build only you can also run: "packer build --only=vmware-iso CentOS-6.6-template-Atlas-v1.json"

If you want to run this but not deploy the artifacts to Atlas, simply run v2 of the json file: "packer build packer build CentOS-6.6-template-local-v2.json" (This will drop your final build in the builds folder)
