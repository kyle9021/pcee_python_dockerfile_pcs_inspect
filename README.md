# PCEE_PYTHON_DOCKERFILE_PCS_INSPECT
Purpose:

This is a simple way to containerize a python script which avoids the need to manage virtual environments and different versions of python on your local machine. This report can provide high level KPIs for a customer using Prisma Cloud Enterprise Edition. 

Assumptions:

* you have docker installed
* you have git installed
* you're working with a debian distribution of Linux
* you will add the .env file to your .gitignore file
* you understand how to harden this process if using for a production environment

# Instructions

step 1: `git clone https://github.com/Kyle9021/PCEE_PYTHON_DOCKERFILE_PCS_INSPECT`

step 2: `cd PCEE_PYTHON_DOCKERFILE_PCS_INSPECT`

step 3: `nano .env` and assign variables according to your environment

step 3: `docker build -t pcee_python_inspect_report:1 .`

step 4: `docker run -it --name pcee_python_inspect_report:1 -v $PWD:/src pcee_python_inspect_report:1`

step 5: after it runs it will create a report in the directory. Open the report with excel or other csv/table editor. 
