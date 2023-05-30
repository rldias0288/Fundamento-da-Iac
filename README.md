# Fundamento-da-Iac

Preparação do Ambiente Ubuntu/Linux 

# Instalação do Terraform

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform

# Instalação python3

apt install python3

# Instalação do Ansible

sudo apt update

sudo apt install software-properties-common

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt-get install ansible

# Instalação do AWS CLI

Antes: apt-get install zip unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install


--Atualizar 

sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

Fonte: https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html

# confguração de a acesso Terraform na AWS
AWS CLI

Caso você ainda não tenha instalado a AWS CLI, basta ir a página da AWS CLI e seguir os procedimentos para o seu sistema operacional.

Depois de instalado você pode configurar a AWS usando o comando aws configure onde será requisitado a chave secreta (secret key) que pode ser criada nessa pagina clicando em “criar chave de acesso” na aba “credenciais do AWS IAM”.

Link: https://console.aws.amazon.com/iam/home?#/security_credentials

Gerar chaves para se conectar no github

Link: https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux


