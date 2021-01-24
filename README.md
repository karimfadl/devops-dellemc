# Devops CI/CD DELL EMC

## Prerequisites
### 1.Create K8S Cluster Which Used in Deployment Section.
In My Case i created a K8s Cluster in DigitalOcean Cloud Provider, and Added the config file of K8s to ~/.kube/config.

### 2.Install Jenkins in K8s Cluster.
```
cd k8s-jenkins/
kubectl create ns jenkins
kubectl create -f pvc-jenkins.yaml
kubectl create -f app-jenkins.yaml 
kubectl create -f svc-jenkins.yaml
```

I used K8s LoadBalancer Service, So i got the IP of LB `kubectl -n jenkins get svc` and Added it to My Cloudflare DNS Acoount, you can use /etc/hosts.  
Note: You Can establish your Jenkins Image through Dockerfile inside : "k8s-jenkins" Dir.

### 3.Integrate Jenkins With GitHub, Docker and K8S Cluster.
After Jenkins Installation, We need to Install Some Jenkins Plugins and integrate Jenkins With GitHub, Docker and K8S through "Manage Credentials" Section.

-For Jenkins Plugins we need to install "Kubernetes Cli" and "Blue Ocean".

Access "Manage Credentials" > "Jenkins" and Configure the following Secrets. 
-For GitHub >> "Username with password Type" add your GitHub user and password with ID called "github_token".
-For Docker Hub >> "Username with password Type" add your Docker Hub user and password with ID called "docker_hub_login".
-For K8s >> "Secret File Type" with ID called “mykubeconfig” and Choose "~/.kube/config".

### 4.Create Your Jenkins Pipline Through Blue Ocean.
Use Blue Ocean to Integrate Jenkins With Your GitHub account through Token, and Make Sure about Jenkinsfile Path in Pipline Config Section.

### 5.Clone The Repo and Modify Some Files.
```
git clone https://github.com/karimfadl/devops-dellemc.git
sh change.sh
```
After That Add, commit and push the updates, and monitor Jenkins Dashboard to check the changes.

Check The attached Video for My Demo.
```
https://drive.google.com/file/d/1WBA1R_1qEoW0AwMuMIYG6JNCNunR5wUq/view?usp=sharing
```
