
####Terraform_Install() 

#######################################################
  PACKAGE_NAME="awscli"

        # Check if the package is already installed
        if dpkg -l | grep -q "^ii  $PACKAGE_NAME "; then
            echo "Package $PACKAGE_NAME is already installed."
        else
            # Install the package if not already installed
            sudo apt update
            sudo apt install -y $PACKAGE_NAME
                fi
####################################################################

        
        git clone https://github.com/hashivim/vim-terraform.git ~/.vim/pack/plugins/start/vim-terraform     ##  VIM  Terraform Colour
        echo "  https://releases.hashicorp.com/terraform/1.7.5/   check the URL for the file to downlaod   "
        echo " wget  https://releases.hashicorp.com/terraform/1.7.5/terraform_1.6.6_linux_amd64.zip  "
        wget   https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip
        echo " unzip terraform_1.6.6_linux_amd64.zip  "
        unzip terraform_1.7.5_linux_amd64.zip
        echo -e " \n  sudo mv terraform /usr/local/bin/      #################### "
        sudo mv terraform /usr/local/bin/
        echo -e " \n terraform --version          #########################  "
        terraform --version
        echo -e "\n terraform -install-autocomplete    ####################### "
        terraform -install-autocomplete
        echo -e "\n terraform --help  \n     ###################### "
        terraform --help

        echo " terraform  end     ✨  "

