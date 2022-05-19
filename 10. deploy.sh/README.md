# Creating a deploy script

## Prerequites

You need to get a authenticated server with your public key.
 1. Assuming that [yourkey] is the content of the public key on your
computer, connect to your server and create the ~/.ssh/authorized_keys
file and paste [yourkey] inside.

 2. You can manage settings of the ssh deamon on the server by editing
    the file /etc/ssh/sshd_config

## Deploy script

You can write any necessary opration to deploy your app on your server
inside a shell script.
Many tools are available to do this
 - rsync
 - ssh
 - tar
 - mysqldump
 - etc.

The goal of this script is to be called by your hand whe, you are ready
to deploy.

## Security

It's really important to keep in mind that every thing you are uploading
on you're server can be a threat. So just upload necessary files to
start your application.

 - Ignore every file like shell scripts
 - Ignore CVS items like .git directory
 - Don't upload dependency as node_modules, vendor, etc...

