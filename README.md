# [Packer](http://packer.io) templates for Linux deployments.

### Table of contents

[Components](#components)

[Deploying](#deploying)

<a name='components'></a>
## Components

1. A hypervisor: your choices are outlined on the following page: https://packer.io/docs (under the builders section)
2. Packer installation files: https://packer.io/downloads.html
3. The manifests from this repo
4. Atlas and AWS account access details

<a name='deploying'></a>
## Deploying

Clone this GIT repo: git clone https://github.com/geckoproject/packer-lab.git

In order to deploy artifacts to Atlas, you have to:

1. Sign up for an account on Atlas: https://atlas.hashicorp.com if you haven't already done so

2. Change the Atlas username/user to whatever yours is in the variables section of the Atlas deployment

3. Generate your token on the Atlas portal and export it as an environment variable on the command line

4. Install packer

5. Install VirtualBox and/or VMware Fusion

6. Execute "packer build CentOS-6.6-xxx.json"

7. This builds in both VirtualBox and VMware Fusion, to specify one build only you can also run: 

- "packer build --only=vmware-iso CentOS-6.6-xxx.json" (other options are amazon-ebs and virtualbox-iso)

- If you want to run this but not deploy the artifacts to Atlas, simply run v2 of the json file: 
  "packer build CentOS-6.6-template-local-v2.json" 
  (This will drop your final build in the builds folder on your local machine)


### Prerequisites

- A deployment of [Packer](http://packer.io)
- A deployment of [VirtualBox](https://virtualbox.org) or [VMware Fusion] (http://www.vmware.com/products/fusion/)
- An account on [AWS] if you wish to use the EBS interface (http://aws.amazon.com/)
- Full instructions for installing Packer can be found at https://packer.io/docs/installation.html

#### Implementation Notes

1. The Amazon AMI that you use needs to pre-exist, using a public AMI will typically fail with an error of ""Sudo Error “ you must have a tty to run sudo”"".
- To fix this issue pre-provision your AMI, run "visudo" as root and comment out the line "Default requiretty".
2. The key that is specified for the build of Amazon AMI should exist before hand on the AMI. If you choose to use your own key ensure this is so, otherwise the Packer provisioner will generate temp keys whilst building.
