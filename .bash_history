sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | \ 
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
reset
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install -y terraform
terraform version
terraform
terraform -install-autocomplete
exit
export TF_VAR_mystring="Hello World"
export TF_VAR_mynum=34
terraform plan
export TF_VAR_mystring="Hello Variable"
terraform plan
export TF_VAR_mystring="Hello Env Var"
terraform plan
exit
git clone https://github.com/rdamrong/tf-docker.git
cd tf-docker/
terraform init
terraform plan
docker image ls
docker container ls
terraform apply
docker image ls
docker container ls
terraform destroy
docker image ls
terraform apply -auto-approve
terraform destroy -auto-approve
cd
pwd
terraform -chdir=tf-docker apply -auto-approve
terraform -chdir=tf-docker destroy -auto-approve
terraform -chdir=tf-docker apply -auto-approve
curl http://localhost:8080
docker ps
curl http://localhost:8000
cd tf-docker/
curl http://localhost:8000
uname -a
cd;mkdir tf-21
cd tf-21/
vi main.tf
terraform init
terraform apply
vi main.tf 
terraform apply
cd ..
cd;mkdir tf-22;cd tf-22
vi main.tf
terraform init
terraform plan -out=plan.out
terraform apply plan.out 
sh-instance |grep lab22-0
ssh ubuntu@54.169.27.63 
terraform destroy
cd
ssh-keygen -t rsa
cd;mkdir tf-23;cd tf-23
vi main.tf
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance | grep lab23-0
ssh ubuntu@13.215.141.72
curl -m 5 http://13.215.141.72
terraform destroy
cd;mkdir tf-24;cd tf-24
cp ../tf-23/main.tf .
vi main.tf 
terraform init
vi main.tf 
terraform init
vi main.tf 
terraform init
terraform plan -out=plan.
terraform plan -out=plan.out
terraform apply plan.out
sh-instance | greo lab244-0
sh-instance | grep lab24-0
ssh ubuntu@3.1.211.71 
curl http://3.1.211.71 
terraform destroy
cd ..
ls
cd;mkdir tf-31;cd tf-31
vi main.tf
terraform init
terraform plan -out=plan.out
cd;mkdir tf-32;cd tf-32
cp ../tf-22/main.tf main.tf
vi main.tf 
terraform init
terraform plan -out=plan.out
terraform apply plan.out
cd;mkdir tf-33;cd tf-33
cp ../tf-22/main.tf main.tf
vi main.tf 
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance | grep lab33-0
terraform destroy -auto-approve
cd; mkdir tf-34; cd tf-34
cp ../tf-22/main.tf main.tf
vi main.tf 
terraform init
terraform plan -out=plan.out
terraform apply plan.out
vi main.tf 
terraform plan -out=plan.out
terraform destroy -auto-approve
cd; mkdir tf-35; cd tf-35
cp ../tf-22/main.tf main.tf
vi main.tf 
terraform init
terraform plan -out=plan
cd; mkdir tf-36; cd tf-36
echo "Hello World" > d8k.io
cp ../tf-23/main.tf .
vi main.tf 
student@lab0:~/tf-36$ terraform init
terraform init
vi main.tf 
terraform init
terraform plan -out=plan
terraform apply "plan"
cat local-d8k.io
sh-instance | grep lab36
ssh ubuntu@52.221.214.217 -C "cat /tmp/remote-d8k.io"
ssh ubuntu@52.221.214.217 -C "cat /tmp/file-d8k.io"
terraform destroy -auto-approve
cd; mkdir tf-41; cd tf-41
vi main.tf
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance |grep lab41.*-0
terraform destroy
vi main.tf 
rm -Rf .terraform*
ls
ls -la
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance |grep lab41.*-0
vi main.tf 
terraform init 
terraform init -upgrade
terraform destroy -auto-approve
cd; mkdir tf-42; cd tf-42
vi main.tf
terraform console
vi main.tf
terraform plan
terraform plan -var mystring="d8k.io" -var mynum=51
bash
vi terraform.tfvars
terraform plan
vi main.tf
vi tfclass.auto.tfvars
terraform console
vi main.tf 
vi d8k.auto.tfvars
terraform console
ls
vi d8k.auto.tfvars 
terraform console
vi d8k.auto.tfvars 
vi main.tf 
terraform console
vi main.tf 
vi d8k.auto.tfvars 
terraform console
cd; mkdir tf-43; cd tf-43
vi main.tf
vi terraform.tfvars
terraform console
vi terraform.tfvars 
terraform console
vi main.tf 
terraform console
cd; mkdir tf-44; cd tf-44
git clone https://github.com/rdamrong/tf-simple-ec2.git
ls
cd tf-simple-ec2/
cat main.tf 
cd ..
ls
rm -Rf tf-simple-ec2/
git clone https://github.com/rdamrong/module-simple-ec2.git
vi main.tf
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance |grep dassie
terraform destroy -auto-approve
cd; mkdir tf-45; cd tf-45
vi main.tf
terraform init
terraform plan -out=plan.out
vi main.tf 
terraform plan -out=plan.out
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance | grep terrier
terraform destroy -auto-approve
cd
terraform console
cd; mkdir tf-51; cd tf-51
echo "d8k.io" > data.info
vi myconfig.tftpl
vi main.tf
terraform init
terraform plan -out=plan.out
terraform apply plan.out
cat nginx.conf
cd
cd; mkdir tf-52; cd tf-52
cd ..
cd tf-52
vi main.tf
terrafrom console
terraform console
cd; mkdir tf-53; cd tf-53
vi main.tf
terraform init
terraform plan
cd; mkdir tf-61; cd tf-61
terraform push
vi main.tf
terraform init
vi main.tf 
terraform init
cd; mkdir tf-62; cd tf-62
aws s3api create-bucket --bucket tfclass-d8k-student0 --create-bucket-configuration LocationConstraint=ap-southeast-1 
aws s3api put-bucket-encryption --bucket tfclass-d8k-student0 --server-side-encryption-configuration "{\"Rules\": [{\"ApplyServerSideEncryptionByDefault\":{\"SSEAlgorithm\": \"AES256\"}}]}"  
vi main.tf
terraform in
terraform init
aws dynamodb create-table --table-name tfclass-lock-student0 --attribute-definitions AttributeName=LockID,AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
vi main.tf 
terraform init -migrate-state
terraform console &
terraform plan
terraform force-unlock   be9788bc-6135-b1c6-9847-41005d7a7809
aws s3 rm s3://tfclass-d8k-studentX --recursive
aws s3 rm s3://tfclass-d8k-student0 --recursive
terraform destroy -auto-approve
aws s3api delete-bucket --bucket tfclass-d8k-student0
aws dynamodb delete-table --table-name tfclass-lock-student0
aws s3api delete-bucket --bucket tfclass-d8k-student0
aws s3 rm s3://tfclass-d8k-student0 --recursive
aws s3api delete-bucket --bucket tfclass-d8k-student0
cd; mkdir tf-63; cd tf-63
$ mkdir cms; mkdir security
mkdir cms; mkdir security
vi cms/main.tf
vi cms/output.tf
vi cms/variable.tf
vi security/main.tf
vi security/output.tf
vi hello.conf
vi output.tf
terraform init
vi security/output.tf 
vi output.tf 
vi cms/main.tf 
terraform init
vi output.tf 
terraform init
vi output.tf 
ls
cp output.tf main.tf
vi output.tf 
vi main.tf 
terraform init
terraform plan -out=plan.out
terraform apply plan.out
cat main.tf 
vi main.tf 
terraform apply
curl http://app0-0-1302125226.ap-southeast-1.elb.amazonaws.com
curl http://app0-1-1365828625.ap-southeast-1.elb.amazonaws.com"
curl http://app0-1-1365828625.ap-southeast-1.elb.amazonaws.com
terraform destroy
sh-instance 
cd ..
cd tf-32/
terraform destroy
cd; mkdir tf-71; cd tf-71
vi main.tf
terraform get
vi main.tf
terraform get
vi main.tf
terraform get
vi main.tf
terraform get
terraform get -update
cd; mkdir tf-72; cd tf-72
cp ../tf-22/main.tf .
vi main.tf 
terraform init
sh-instance | grep lab72-0
terraform apply -auto-approve
sh-instance | grep lab72-0
aws ec2 create-tags --resources  i-0515104cae736c321  --tags "Key"="class","Value"="tf-class"
cat terraform.tfstate |jq ".resources[].instances[].attributes.tags"
terraform plan -refresh-only
terraform apply -refresh-only -auto-approve
cat terraform.tfstate |jq ".resources[].instances[].attributes.tags"
aws ec2 delete-tags --resources  id=i-0515104cae736c321 --tags "Key"="class","Value"="tf-class"
aws ec2 delete-tags --resources  i-0515104cae736c321 --tags "Key"="class","Value"="tf-class"
terraform apply -refresh-only -auto-approve
terraform plan -replace=aws_instance.app_server -out=plan.out
terraform apply plan.out
terraform plan -destroy -out=plan.out
terraform apply plan.out
terraform show plan.out
terraform apply plan.out
terraform plan -out=plan.out
terraform show plan.out
terraform apply plan.out
terraform show
terraform state list
terraform state show aws_instance.app_server
sh-instance |grep lab72-0
terraform state rm aws_instance.app_server
terraform state list
terraform import aws_instance.app_server  i-02eba5b30a182320e 
sh-instance |grep lab72-0
terraform state list
vi main.tf 
terraform plan
terraform state mv aws_instance.app_server aws_instance.backend
terraform plan
terraform taint
terraform state list
terraform taint aws_instance.backend
terraform plan -out=plan.out
terraform untaint aws_instance.backend
terraform plan -out=plan.out
terraform destroy -auto-approve
ls
ls -la
terraform workspace list
terraform workspace new prod
vi main.tf
terraform plan
terraform validate
cat main.tf 
terraform workspace list
terraform plan -out=plan.out
terraform apply plan.out
sh-instance |grep lab72-0
ls terraform.state
ls  ./terraform.tfstate.d/prod/terraform.tfstate 
terraform workspace select default
terraform plan -out=plan.out
terraform apply plan.out
sh-instance |grep lab72-0
ls terraform.tfstate
terraform destroy -auto-approve
terraform workspace select prod
terraform destroy -auto-approve
ls
cat main.tf 
terraform fmt -h
terraform fmt -diff
terraform fmt 
sudo apt update
apt install ansible
sudo apt install ansible
ansible version
ansible -version
ansible --version
cd
cd; mkdir tf-81; cd tf-18
cd; mkdir tf-81; cd tf-81
cp ../tf-24/main.tf .
vi main.tf 
vi deploy.tf
vi deploy.tf 
cat main.tf 
cat deploy.tf 
vi output.tf
cat output.tf 
vi nginx.yaml
cat nginx.yaml 
terraform init
terraform plan -out=plan.out
terraform apply plan.out
ls
vi deploy.tf 
terraform apply 
vi deploy.tf 
terraform apply 
vi ansible.cfg
cat deploy.tf 
terraform apply 
curl http://ec2-3-0-103-232.ap-southeast-1.compute.amazonaws.com
sudo apt search mysql
terraform destroy -auto-approve
sudo apt install -y mysql-client
mysql -v
mysql -h
mysql 
cd; mkdir tf-82; cd tf-82
vi main.tf
cat main.tf 
vi main.tf
terraform init
terraform plan -out=plan.out
terraform apply plan.out
terraform plan -out=plan.out
terraform apply plan.out
terraform destroy -auto-approve
vi main.tf 
terraform plan -out=plan.out
terraform apply plan.out
mysql -u tfclass -p -h tfclass-db-student0.czt2sx7gv63k.ap-southeast-1.rds.amazonaws.com
terraform destroy -auto-approve
sudo apt install -y docker-compose
version: '3'
services:
networks:
volumes:
cd; mkdir jenkins; cd jenkins
vi docker-compose.yaml
vi docker-compose.txt
cat docker-compose.txt 
docker-compose up -d
ls
mv docker-compose.txt docker-compose.yaml
docker-compose up -d
docker-compose up -d -h
docker-compose up -d --force-recreate
docker logs jenkins
docker logs jenkins | grep -B 2 initialAdmin
docker logs jenkins
docker logs -f jenkins
docker-compose up -d --force-recreate
docker logs -f jenkins
cd jenkins/
docker logs jenkins
docker-compose up -d --force-recreate
docker logs jenkins
docker-compose up -d --force-recreate
docker logs jenkins
docker-compose down
docker volume ls
docker volume rm jenkins_jenkins_home 
docker-compose up -d 
docker logs jenkins
clera
clear
env | grep AWS
exit
sh-instance | grep jenkins0
ls
for i in $(ls); do echo $i; done
for i in $(ls); do echo $i; cd $i; done
for i in $(ls); do echo $i; cd ; cd $i; done
ls
ls -la
ls -ld
ls -la
for i in $(ls); do echo $i; cd ; cd $i; rm -Rf .terraform*; rm -f terraform.state*; cd; done
ls
cd tf-21/
ls
ls -la
cd ..
for i in $(ls); do echo $i; cd ; cd $i; rm -Rf .terraform*; rm -f terraform.tfstate*; cd; done
cd tf-21
ls
ls -la
cd ..
ls
ls -la
tar cvfz ../tfclass.tgz ./
tar cvfz /tmp/tfclass.tgz ./
ls -la /tmp/*.tgz
cd tf-45/
terraform init
terraform plan -out=plan.out
terraform apply plan.out
sh-instance |grep pheasant
cd; mkdir tf-46; cd tf-46
vi main.tf
terraform plan -h
terraform plan -generate-config-out=myweb.tf
ls
ks
ls
terraform init
terraform plan -generate-config-out=myweb.tf
vi myweb.tf 
