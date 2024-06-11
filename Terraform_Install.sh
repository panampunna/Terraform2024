
#!/bin/bash

sudo apt update -y 
sudo apt  install curl -y
echo -e " https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html  "
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
curl -o awscliv2.sig https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip.sig
unzip awscliv2.zip
 sudo ./aws/install

which aws
aws --version

echo  "terraform --version "
terraform --version
TERRAFORM_VERSION="1.8.5"

# Check if AWS CLI is already installed
if dpkg -l | grep -q "^ii  $PACKAGE_NAME "; then
    echo "Package $PACKAGE_NAME is already installed."
else
    # Install the package if not already installed
    sudo apt update
    sudo apt install -y $PACKAGE_NAME
fi

# Check if Terraform is already installed and the version is correct
if command -v terraform &> /dev/null && terraform --version | grep -q "$TERRAFORM_VERSION"; then
    echo "Terraform $TERRAFORM_VERSION is already installed."
    exit 0
fi

# Clone the Vim Terraform plugin for syntax highlighting
git clone https://github.com/hashivim/vim-terraform.git ~/.vim/pack/plugins/start/vim-terraform

# Instructions for checking the download URL
echo "https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/ check the URL for the file to download"

# Download Terraform
wget https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Unzip the downloaded file
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Move Terraform binary to /usr/local/bin/
sudo mv terraform /usr/local/bin/

# Display Terraform version
terraform --version

# Install Terraform autocomplete
terraform -install-autocomplete

# Display Terraform help
terraform --help

# End message
echo "Terraform installation complete ✨"


