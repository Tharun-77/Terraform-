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
