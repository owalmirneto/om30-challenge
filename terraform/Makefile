include .env

init:
	terraform init -backend-config="conn_str=$${PG_CONNECTION_STRING}";

plan:
	terraform plan;

apply:
	terraform apply;

destroy:
	terraform destroy;
