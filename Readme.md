# Terraform-Database

## Introduction

This is a repository for provisioning an RDS instance using Terraform. The code was taken from the YRTT course's [Terraform repository](https://github.com/techreturners/yrtt_terraform_rds). In line with best practices, Terraform State and secrets (including AWS credentials) are set and stored in an organisation workspace on Terraform Cloud.

Once configuration has been applied successfully it also outputs an RDS endpoint in order to connect to our database in MySQL Workbench.

## Pre-Requisites

The code in [main.tf](./main.tf) assumes you have set an AWS credential for a profile called "terraform".

Such that you should have the following file:

```
~/.aws/credentials
```

And it should have contents similar to the following:

```
[terraform]
aws_access_key_id=SOMEAWSACCESSKEYID
aws_secret_access_key=SOMEAWSSECRET
```

Notice the contents in the square brackets matches exactly the name of the profile on line 13 of the [main.tf](./main.tf)

As detailed below, the credentials for this profile are stored in Terraform Cloud.

## Terraform variables

Variables are stored on Terraform Cloud:

```md
database_name
database_username
database_password
```

AWS Credentials are stored as environment variables in Terraform Cloud:

```md
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

Please contact Sam (`notwaving`) if you'd like to know more about Terraform Cloud, as you'll need an API token to connect to the workspace.

## Terraform State

Also hosted on Terraform Cloud. This configuration will not save State locally.

## Workflow

This repo has a Github action ready to run through Terraform commands:

```
fmt
init
plan
apply
```

on `git push` to the main branch of this repository.

## Instructions for setting up locally

Firstly initialise the Terraform provider by doing:

```
terraform init
```

Then run a plan, it will ask you for the required variables. You can also see the variables listed in the [variables.tf](./variables.tf) file.

```
terraform plan
```

If the plan looks good then run the apply, entering the same variables when requested.

```
terraform apply
```

If you wish to remove all the infrastructure created by Terraform you can do:

```
terraform destroy
```
