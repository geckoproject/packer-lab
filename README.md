[Packer](http://packer.io) templates for Linux boxes.

* CentOS 6.6 (Minimal) 64-bit with dev tools for VirtualBox extensions

Steps:

1. Clone this GIT repo.

In order to deploy artifacts to Atlas, you have to:

-- Sign up for an account on Atlas: https://atlas.hashicorp.com if you haven't already done so

-- Change the Atlas username/user to whatever yours is in the variables section of the Atlas deployment

-- Generate your token on the Atlas portal and export it as an environment variable on the command line

-- Execute "packer build CentOS-6.6-template-Atlas-v1.json"

This builds in both VirtualBox and VMware Fusion, to specify one build only you can also run: 

"packer build --only=vmware-iso CentOS-6.6-template-Atlas-v1.json"

If you want to run this but not deploy the artifacts to Atlas, simply run v2 of the json file: 
"packer build CentOS-6.6-template-local-v2.json" 

(This will drop your final build in the builds folder on your local machine)
