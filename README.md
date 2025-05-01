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
