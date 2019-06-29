# Setup a vagrant workstation 

### What is vagrant?
Vagrant is open source and allow to use virtual machines via command-line. The workstation can be defined in code, easy to back up, modify and share.

### Install Virtual Box

https://www.virtualbox.org/wiki/Linux_Downloads 


### Install Vagrant

https://www.vagrantup.com/downloads.html

### Run box
#### Create and direct to the folder

  mkdir mybox 

  cd mybox 


#### Run bellow comment (bento is a organizition name)

 vagrant init bento/ubuntu-16.04 

 vagrant up 

 vagrant status 


## Create a folder named files and keep your files in your Host machine 
config.vm.synced_folder "files", "/files_data"

## Uncomment the provisioners and run vagrant provision 
