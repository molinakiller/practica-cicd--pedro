# practica-cicd-pedro
## REQUIREMENTS

- Have docker installed
``` bash
 sudo apt-get update
 sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```
- Have docker-compose installed
``` bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
- Have an account in dockerhub --> https://hub.docker.com/
- Install jenkins, and do some configurations like add docker pluggin, dsl plugging 
``` bash
cd jenkins
docker-compose up
```
When its Jenkins its running after launch this command, you must take the credentials on terminal.
Then you have to go to https://localhost:8080 and install whit these credentials.

For install the pluggins you must go to:
1) Docker plugin --> Manage jenkins > Manage pluggins > Avaiable > search DOCKER > Click on checkbox and click on Download now and install after restart
2) DSL plugin --> Manage jenkins > Manage pluggins > Avaiable > search DSL > Click on checkbox and click on Download now and install after restart

- Add a jenkins agent, you must create a docker file and upload in dockerhub
``` bash
cd jenkins/agents
#loggin in docker-hub
docker login
#build the docker agent
docker build -t <your-docker-hub-username>/terraform-jenkins-agent .
#upload the docker
docker push  <your-docker-hub-username>/terraform-jenkins-agent:latest
```
Then you must go to jenkins and configure your agent with this configurations
Manage Jenkins > Manage Nodes and Clouds > Configure Clouds > Docker agent templates...
1) Give a label (this will be used by pipeline as agent)
2) Click on enabled
3) Give a name
4) In docker image, put your image (the image you push to docker hub in the last step)
5) Usage, you must select: "Only build jobs with label expressions matching this node"
6) Save

## TERRAFORM EXPLANATION

In this proyect we will use Google Cloud Provider for use all infraestructure, just becouse i have some free credits in my account.
Terraform is a infraestructure as code, thats means that you could use your custom code for create the infraestructure as you want.
For this case we will use a Cloud Storage.
You will need login with your credentials, and storage in a document
```bash  
#this command open a browser tab, login with your google cluod account
gcloud auth application-default login
#copy the json generated
cp route.json application_default_credentials.json
```
Then you must add this credentials on Jenkins.
Go to Manage Jenkins > Manage credentials > Add credentials > On Kind, select Secret file > add your json



  
