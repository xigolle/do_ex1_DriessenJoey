

https://github.com/xigolle/do_ex1_DriessenJoey

# Vagrant
This repo will hold a vagrant file and is used to experiment with Vagrant. 
The Vagrant will setup a Ubuntu webserver with Apache, MySQL and PHP installed (LAMP).

##what is included?

- apache2 
- php5
- MySQL
- PHPMyAdmin
- Git


##How does it work:

1.  Download or clone repo
2. Install vagrant (https://www.vagrantup.com/)
3. Run bash from this folder(repo)
4. first run the `vagrant up` command. 
5. After this command run succesfull run the `vagrant provision` command **Only run this if `vagrant up ` doesnt do this automaticly**
6. Now you have a vragrant machine running and you can ssh to it with the command `vagrant ssh`.


##How can I work with it?

To visit the website on your machine you go to the following website:
`localhost:8080`

To visit the PHPMyAdmin panel go to the following uri:
`localhost:8080/phpmyadmin`

In the folder there is a folder called `www` you can put all your website files in it and it will be displayed.

The password for the database is default set to `Welcome123!` if you want to have your own password go to the `provision_MySQL.sh` file and set the `PASSWORD` variable to your desire.


### aditional notes

- Make sure Virtualbox is up to date to the newest version else this will stop the automatic provisioning when creating the Vagrant box.
- If you are already using port 8080 for any other service just change the following line(xxxx can be any port number you want to use) in the Vagrant file :

`config.vm.network "forwarded_port", guest:80, host:xxxx` 

- Only the error output will be displayed on the Console if you which to change that you need to remove the `command > /dev/null` line for each component you do want to show the full log.



