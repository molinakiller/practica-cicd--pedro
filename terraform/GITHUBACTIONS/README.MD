1) We have to create a terraform cloud account.
2) Then we must save the create API-TOKENS and store in the github projects secret.
3) Then we have to store the credentials of Google Cloud in the terraform project.
3.1) Create an environment variable called GOOGLE_CREDENTIALS in your Terraform Cloud workspace.
3.2) Remove the newline characters from your JSON key file and then paste the credentials into the environment variable value field.
3.3) Mark the variable as Sensitive and click Save variable.
