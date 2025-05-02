# Terraform
Here we are going to learn about terraform. How it works and all its workflow



# STEPS HOW TO INSTALL TERRAFORM IN ALL KIND OF MECHINES

This guide helps you install **Terraform** on **Ubuntu (Linux)**, **Windows**, and **macOS**.

---

# 🌍 Terraform Installation Guide

This guide helps you install **Terraform** on **Ubuntu (Linux)**, **Windows**, and **macOS**.

---

## 🐧 Ubuntu (Linux) Installation

### Step 1: Update System Packages
```bash
sudo apt update && sudo apt upgrade -y
```

### Step 2: Install Required Dependencies
```bash
sudo apt install -y gnupg software-properties-common curl
```

### Step 3: Add the HashiCorp GPG Key
```bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

### Step 4: Add the Terraform Repository
```bash
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```

### Step 5: Install Terraform
```bash
sudo apt update
sudo apt install terraform -y
```

### Step 6: Verify Installation
```bash
terraform -v
```

---

## 🪟 Windows Installation

### Step 1: Download Terraform
- Visit the [Terraform Downloads Page](https://developer.hashicorp.com/terraform/downloads)
- Download the **Windows (amd64)** `.zip` file

### Step 2: Extract and Setup
- Extract the `.zip` file to a folder like `C:\Terraform`
- Add the folder to your **System PATH**:
  - Go to: Control Panel → System and Security → System → Advanced system settings → Environment Variables → Edit PATH → Add folder path

### Step 3: Verify Installation
Open **Command Prompt** or **PowerShell** and run:
```powershell
terraform -v
```

---

## 🍏 macOS Installation

### Step 1: Install Homebrew (if not already installed)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Step 2: Install Terraform via Homebrew
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

### Step 3: Verify Installation
```bash
terraform -v
```

---

## ✅ Sample Output
```
Terraform v1.7.5
```

---

## 📚 Resources
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Terraform GitHub](https://github.com/hashicorp/terraform)

---



# ⚙️ Terraform Workflow

Terraform follows a simple and predictable **Infrastructure as Code (IaC)** lifecycle. Here's the complete Terraform workflow from start to finish:

---

## 1️⃣ Write – Create Configuration

Write infrastructure code using **`.tf`** files in the HashiCorp Configuration Language (HCL).

Example:
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

---

## 2️⃣ Initialize – `terraform init`

Initialize your working directory. This installs the provider plugins (like AWS, Azure, etc.).
```bash
terraform init
```

---

## 3️⃣ Format and Validate

**Format code** for consistency:
```bash
terraform fmt
```

**Validate the configuration** for syntax errors:
```bash
terraform validate
```

---

## 4️⃣ Plan – `terraform plan`

Creates an execution plan showing what Terraform will do without making any changes.
```bash
terraform plan
```

This helps review the changes Terraform will apply before actually applying them.

---

## 5️⃣ Apply – `terraform apply`

Applies the changes required to reach the desired infrastructure state.
```bash
terraform apply
```

You’ll be asked to confirm with `yes` before proceeding.

---

## 6️⃣ (Optional) Show – `terraform show`

Displays the current state and output of the resources.
```bash
terraform show
```

---

## 7️⃣ (Optional) Output – `terraform output`

Retrieves output variables defined in the configuration.
```bash
terraform output
```

---

## 8️⃣ Destroy – `terraform destroy`

Tears down and removes all the infrastructure Terraform manages.
```bash
terraform destroy
```

---

## 📌 Terraform Workflow Summary

| Step       | Command             | Purpose                                   |
|------------|---------------------|-------------------------------------------|
| Write      | `.tf` files          | Define infrastructure                     |
| Initialize | `terraform init`     | Setup working directory and plugins       |
| Format     | `terraform fmt`      | Format configuration files                |
| Validate   | `terraform validate` | Check for syntax/config errors            |
| Plan       | `terraform plan`     | Preview what changes Terraform will make  |
| Apply      | `terraform apply`    | Apply the actual infrastructure changes   |
| Show       | `terraform show`     | View current state                        |
| Output     | `terraform output`   | Display outputs defined in configuration  |
| Destroy    | `terraform destroy`  | Remove infrastructure                     |

---

> ✅ This workflow helps you safely manage and automate infrastructure across multiple environments.

# 📁 Terraform Project: Create Text File with some content

This Terraform configuration to a local text file named `output.txt`.

---

## 📂 Terraform Configuration – `main.tf`

```hcl
# Create a local file with the random content
resource "local_file" "example_file" {
  content  = "Hello Good evening to everyone"
  filename = "${path.module}/output.txt"
}
```

---

## 🚀 Getting Started

## ⚙️ Terraform Commands

### Initialize Terraform
```bash
terraform init
```

### Apply Configuration
```bash
terraform apply
```
Type `yes` when prompted.

---

## 📄 Output

A file named `output.txt` will be created with content like:

```
Here is some random content: clever-dog
```

---

## 🧹 Destroy Resources
```bash
terraform destroy
```

---


# ☁️ AWS CLI Installation Guide

The AWS Command Line Interface (CLI) is a tool to manage AWS services via terminal commands.

---

## 🐧 Install AWS CLI on Ubuntu (Linux)

### Step 1: Download AWS CLI v2 Installer
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```

### Step 2: Unzip the Installer
```bash
unzip awscliv2.zip
```

### Step 3: Run the Installer
```bash
sudo ./aws/install
```

### Step 4: Verify Installation
```bash
aws --version
```

✅ Output should be something like: `aws-cli/2.x.x Python/...`

---

## 🪟 Install AWS CLI on Windows

### Option 1: Using Installer (Recommended)
1. Download the MSI installer from:  
   👉 [AWS CLI v2 MSI (64-bit)](https://awscli.amazonaws.com/AWSCLIV2.msi)

2. Run the installer.

3. Open Command Prompt or PowerShell and verify:
```powershell
aws --version
```

---

## 🍏 Install AWS CLI on macOS

### Step 1: Download Installer
```bash
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
```

### Step 2: Run the Installer
```bash
sudo installer -pkg AWSCLIV2.pkg -target /
```

### Step 3: Verify Installation
```bash
aws --version
```

---

## 🔐 (Optional) Configure AWS CLI

After installing, set up your credentials:

```bash
aws configure
```

You’ll be prompted for:

- AWS Access Key ID
- AWS Secret Access Key
- Default region (e.g., `us-east-1`)
- Default output format (e.g., `json`)

---

## 🧹 Uninstall AWS CLI

### Ubuntu:
```bash
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
sudo rm -rf /usr/local/aws-cli
sudo rm /usr/local/bin/aws
```

### Windows:
Use **Add/Remove Programs** to uninstall AWS CLI.

### macOS:
```bash
sudo rm -rf /usr/local/aws-cli
sudo rm /usr/local/bin/aws
```

---

## 📚 Official Docs

- [AWS CLI User Guide](https://docs.aws.amazon.com/cli/latest/userguide/)
- [AWS CLI GitHub Repo](https://github.com/aws/aws-cli)

---

> ☁️ Manage AWS from your terminal like a pro!

---


# 📁 Terraform Project: Creating a S3 Bucket in aws cloud using terraform

The terraform configuration is given inside the aws_s3_bucket folder

---

After taking the clone of project move inside the aws_s3_bucket folder and run this commands

## ☁️ Prerequisites

- AWS account
- AWS Access and Secret keys
- AWS CLI installed and configured
- Terraform installed

---

## ⚙️ Terraform Commands to Create S3 Bucket

### Step 1: Initialize Terraform
```bash
terraform init
```

### Step 2: Format and Validate (Optional)
```bash
terraform fmt
terraform validate
```

### Step 3: Review the Plan
```bash
terraform plan
```

### Step 4: Apply the Configuration
```bash
terraform apply
```
Type `yes` to confirm.

---

## ✅ Output

An S3 bucket named `my-unique-bucket-name-12345` (or the name you used) will be created in AWS.

---

## 🧹 Destroy the Bucket (Cleanup)

To delete the bucket and all related resources:
```bash
terraform destroy
```

---


