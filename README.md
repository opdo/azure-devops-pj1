# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

### Introduction
For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

### Getting Started
1. Clone this repository

2. Create your infrastructure as code

3. Update this README to reflect how someone would use your code.

### Dependencies
1. Create an [Azure Account](https://portal.azure.com) 
2. Install the [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install [Packer](https://www.packer.io/downloads)
4. Install [Terraform](https://www.terraform.io/downloads.html)

### Instructions
**Step 1: Deploy policy**
Modify or keep pocily rule in file policy-required-tag-rule.json, this rule will require tag for all resource

Definition policy rule by using this command:

`az policy definition create --name {policyName} --description {policyDescription} --rule {file-json-path}`

Then assignment policy by using command:

`az policy assignment create --name {nameAssignment} --policy {policyName}`

**Step 2: Packer template**

Open file server.json, modify client_id, client_secret and subscription_id. You could modify location and azure_tags also if yoi want.

**Step 3: Terraform template**

Open file `vars.tf` and mofify resource group name, location, username, password,...

Open file `main.tf` and you could change any configuration that you want.

**Step 4: Deploy**

Run command to build packer first:

`packer build server.json`

After that, let initializes a working directory containing Terraform configuration by using command:

`terraform init`

To deploy Terraform configuration, we run the following commands:

`terraform plan -out solution.plan`

`terraform apply`

### Output

**Step 1 output**

![Step 1](/screenshot/01.%20az%20policy%20definition%20create.png)
![Step 1](/screenshot/02.%20az%20policy%20assignment%20create.png)

**Step 4 output**

Packer

![packer](/screenshot/04.packer%20build.png)

Terraform

![Terraform](/screenshot/06.%20terraform%20apply.png)