### Overview
These are the Packer scripts to build the 64-bit reference environment base used by the [Melbourne Systems Biology Laboratory](http://uomsystemsbiology.github.io/).  To learn more about reference environments, [see the detailed description here](http://uomsystemsbiology.github.io/reference-environments/).    

### Instructions for use

To work with these scripts, install [Packer](https://packer.io/) and [VirtualBox](https://www.virtualbox.org/), then do:

```
$ git clone https://github.com/uomsystemsbiology/packer-vre-base.git
$ cd packer-vre-base
$ packer build -only=virtualbox-iso
```
This will build the base 64-bit reference environment as a VirtualBox OVA file, and as a Vagrant '.box' file.  To build and upload reference environments for Docker and Amazon AWS, you will need to register usernames and passwords for Amazon AWS, Docker and [Hashicorp Atlas](https://atlas.hashicorp.com/), then put them into the 'keys.json' file, and do:

```
$ packer build -var-file=keys.json
```

This will build the reference environment for all three platforms and upload them to Atlas, and to the Docker Hub.  

For more details, consult the [Packer documentation](https://packer.io/docs).


