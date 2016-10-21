#Cloud9 instance

## Versions:
Select your base image by specifying a tag.

Docker hub: https://hub.docker.com/r/jrcamenzuli/cloud9/
##Usage

    docker run -d -v $(pwd):/workspace -p 8181:8181 jrcamenzuli/cloud9[:tag]

##Start with auth

    docker run -d -v $(pwd):/workspace -p 8181:8181 jrcamenzuli/cloud9[:tag] --auth username:password
    
You can also use any starting option describe in : https://github.com/c9/core

##Use custom user settings

    docker run -d -v $(pwd):/workspace -v /home/user/c9.settings:/root/.c9/user.settings -p 8181:8181 jrcamenzuli/cloud9[:tag]

Where /home/user/c9.settings is the user.settings file on your file system

## Notes

If you want to only expose cloud9 localy use -p 127.0.0.1:8181:8181 instead of -p 8181:8181. Otherwise it will be accesible to any equipement that can acces to your PC through the network.