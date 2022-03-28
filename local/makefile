all: clean init build

clean: 
	@echo clean step
	cd ../terraform &&  terraform destroy --auto-approve
	
init:
	@echo init step
	cd ../terraform && terraform init

build:
	@echo build step
	cd ../terraform && terraform apply --auto-approve
