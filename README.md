# Terraform-
Here we are going to learn about terraform. How it works and all its workflow

# STEPS HOW TO INSTALL TERRAFORM IN ALL KIND OF MECHINES

**Step 1: Update your system**
sudo apt update && sudo apt upgrade -y

**Step 2: Install prerequisite packages**
sudo apt install -y gnupg software-properties-common curl

**Step 3: Add HashiCorp GPG key**
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

**Step 4: Add the HashiCorp official repository**
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

**Step 5: Update and install Terraform**
sudo apt update
sudo apt install terraform -y

**Step 6: Verify installation**
terraform -v
