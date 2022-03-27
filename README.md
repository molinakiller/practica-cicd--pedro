# practica-cicd--pedro
REQUIREMENTS

docker
docker-compose
account in dockerhub
install jenkins, and do some configurations like add docker pluggin, dsl plugging 
add a jenkins agent, you must create a docker file and upload in dockerhub


TERRAFORM EXPLANATION

In this proyect we will use Google Cloud Provider for use all infraestructure, just becouse i have some free credits in my account.
Terraform is a infraestructure as code, thats means that you could use your custom code for create the infraestructure as you want.
For this case we will use a Cloud Storage.
You will need login with your credentials, and storage in a document
```bash  
login
cp route.json application_default_credentials.json
```


RUN JENKINS IN LOCAL
``` bash
cd jenkins
docker-compose up
```
When its Jenkins its running after launch this command, you must take the credentials on terminal.
Then you have to go to localhost:8080 and install whit these credentials.
  
