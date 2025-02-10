# Terraform - Learning Repository
![Challenge (2)](https://github.com/user-attachments/assets/ad7e98b2-1ea4-414d-9e36-a0857715a4bf)

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white) ![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white) ![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white) ![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white) 


## What is it?
Terraform is an **Infrastructure as Code (IaC)** tool developed by HashiCorp that allows users to define and manage cloud infrastructure using a declarative configuration language. It enables the provisioning, updating, and destruction of infrastructure across multiple cloud providers like AWS, Azure, and Google Cloud. 

This technology uses HCL (HashiCorp Configuration Language) to define infrastructure resources in code, ensuring automation, scalability, and version control. It follows a "plan, apply, destroy" workflow to manage infrastructure efficiently.

## How to use the codes in this repository?
It's important to note that this repository is focused on AWS Services. Although, the process to connect and configure your Cloud Account remais simillar, I suggest searching for guide on your Cloud Services documentation.

So, before running Terraform files, you need to configure AWS CLI to authenticate your AWS Account. [Download AWS CLI](https://aws.amazon.com/pt/cli/) if you haven't done yet. Verify your instalation by using the code:

```
aws --version
```

Then, it's time to configure AWS credentials. You may create a credential by using AWS IAM Service on the Cloud Panel, customizing your own permissions. Remember to generate and save an access key. After that, you may run the code:

```
aws configure
```

You'll be requested:
- AWS Access Key ID
- AWS Secret Access Key
- Default Region [Optional]
- Output Format [Optional]

Verify your configuration by running the code:
```
aws sts get-caller-identity
```

**Note:** You can insert this information on your ```provider.tf``` file if you want. Although, for security purpposes, it's best to configure this credentials locally on your machine.

## Installing Terraform
After configuring AWS connection, if you haven't installed Terraform, it's time to download it [here](https://www.terraform.io/) You may verify your instalation by running:

```
terraform -version
```

## Executing Terraform on CLI
Choose a project and, inside it's folder, run the following code:

```
terraform init
```

This code installs the necessary providers for your application to work. You may also run ```terraform validate``` on your terminal to see if everything worked out correctly.
Next step, to see which resources are going to be created, run:

```
terraform plan
```

Finally, to apply all changes, creating the resources specified on the Terraform files, run:
```
terraform apply
```

## Managing Resources
There are two codes that are also very important to be aware of once you applied your resources. If you want to list your created resources you can run ```terraform state list``` on your terminal. On the contrary, if you want to remove all your created resources, you can run ```terraform destroy```.
Terraform is very rich and has plenty of uses. You may want to read its [documentation](https://developer.hashicorp.com/terraform?product_intent=terraform) in order to make the most of this technology.
