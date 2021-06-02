# PCEE_PYTHON_DOCKERFILE_PCS_INSPECT
Purpose:

This is a simple way to containerize a python script which avoids the need to manage virtual environments and different versions of python on your local machine. This report can provide high level KPIs for a customer using Prisma Cloud Enterprise Edition. Note the python script used was created by Tom Kishel at Palo Alto Networks. See his github here! https://github.com/tkishel/pcs-inspect

Assumptions:

* you have docker installed ([How to install docker on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04))
* you have git installed (`sudo apt-get install git`)
* you're working with a debian distribution of Linux
* you will add the .env file to your .gitignore file
* you understand how to harden this process if using for a production environment, some ideas:
      
     * delete the .env file after building the docker container or `chmod 700 .env` and add file to .gitignore etc. 
     * ensure user password is set correctly
     * use vault to retrieve inject the access and secret key
     * ensure you're not mounting this to the root file system of the host
     * never check into a public image repo

# Instructions

step 1: `git clone https://github.com/Kyle9021/PCEE_PYTHON_DOCKERFILE_PCS_INSPECT`

step 2: `cd PCEE_PYTHON_DOCKERFILE_PCS_INSPECT/`

step 3: `nano .env` and assign variables according to your environment

step 3: `docker build -t pcee_python_inspect_report:1 .`

step 4: `docker run -it --name pcee_python_inspect_report -v $PWD:/src pcee_python_inspect_report:1`

step 5: after it runs it will create a report in the directory. Open the report with excel or other csv/table editor. 

step 6: `docker rm pcee_python_inspect_report` so you can run it again at a later time without worrying about the duplicate names. 
