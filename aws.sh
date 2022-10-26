aws ec2 run-instances 
    --image-id ami-08c40ec9ead489470
    --instance-type t2.micro 
    --subnet-id subnet-08fc749671b2d077c 
    --security-group-ids sg-0b0384b66d7d692f9 
    --associate-public-ip-address 
    --key-name gautam-key

aws ec2 create-vpc 
    --cidr-block 10.0.0.0/16 
    --tag-specification ResourceType=vpc,Tags=[{Key=Name,Value=MyVpc}]   


aws ec2 create-security-group 
    --group-name MySecurityGroup 
    --description "My security group" 
    --vpc-id vpc-1a2b3c4d  
    
aws ec2 create-subnet 
    --vpc-id vpc-081ec835f3EXAMPLE 
    --cidr-block 10.0.0.0/24 
    --tag-specifications ResourceType=subnet,Tags=[{Key=Name,Value=my-ipv4-only-subnet}]

    