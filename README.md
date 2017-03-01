# Cloud9 Web IDE
Docker hub: https://hub.docker.com/r/jrcamenzuli/cloud9-ubuntu/

Cloud9 is a web browser based Integrated Development Environment. Since the UI runs in the browser it is highly portable, running on almost any device that has a web browser. Use this image to host your own Cloud9 instance on your computer/server and use it's resources for development and experimentation. Have fun!

## Usage

    docker run -d -v $(pwd):/workspace -p 8181:8181 jrcamenzuli/cloud9-ubuntu[:tag]

## Start with auth

    docker run -d -v $(pwd):/workspace -p 8181:8181 jrcamenzuli/cloud9-ubuntu[:tag] --auth username:password
    
You can also use any starting option describe in : https://github.com/c9/core

## Use custom user settings

    docker run -d -v $(pwd):/workspace -v /home/user/c9.settings:/root/.c9/user.settings -p 8181:8181 jrcamenzuli/cloud9-ubuntu[:tag]

Where /home/user/c9.settings is the user.settings file on your file system

## Notes

If you want to only expose cloud9 localy use -p 127.0.0.1:8181:8181 instead of -p 8181:8181. Otherwise it will be accesible to any equipement that can acces to your PC through the network.

## Feedback

* Is your desired base image not available? Make a request.
* Is there something you would like included/fixed/improved in one of the versions? Make a request.