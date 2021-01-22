# Ansible Assignment

## Prerequisites
### 1.Launch Centos 7 VM and Create User to Start Ansible Playbook.
Create Virtual Machine Based on Centos 7 and Create a new Linux User which you will use to run the Ansible Playbook.

### 2.Clone The Repo and Modify Some Vars.
```
git clone https://github.com/karimfadl/devops-dellemc.git
cd ansible-assignment
```
You Can Change Some Vars based on your env like : Usernames of Linux Users, Tomcat Credentials through group_vars/all file.
Also Replace The IP in hosts file to Your Centos 7 VM IP.

### 3.RUN Ansible Playbook of Task.
```
ansible-playbook -i hosts playbook.yaml -k
```

### 4.Test Tomcat Installation and The Html Static Page.
To Check Tomcat installation Based on This task, Open your browser and check the following URL.
```
http://<VM_IP or Domain>:9095
```
To Check The Static Page Which asked for this task, Open your browser and check the following URL.
```
http://<VM_IP or Domain>:9095/static/hello.html
```
