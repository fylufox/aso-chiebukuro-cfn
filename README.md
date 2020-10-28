# Aso Chiebukuro CFn-Template
## How to deploy
1. execute script  
   ```./packaging.sh bucketname aws_profile responsefile```
    - bucketname  
      Upload destination S3 bucket.  
    - aws_profile  
      AWS profile to use.  
      Default is "default".  
      If use default profile, argument are not required.
    - responsefile  
      The name of the packaged YAML file.  
      Default is "response.yaml".  
      argument are not required.  

1. Create a stack from a packaged template  
   Create stack from AWS-CLI or AWS Management console.  

## Parameters of packaged template.
- Mykeypair  
    Instance Keypair Name.  
    Type: AWS::EC2::KeyPair::KeyName
- S3BucketName  
    The name of the generated S3 bucket.  
    Type: String
- LocalDomainName   
    local domain name.(xxx.local)  
    Type: String  
    Default: aso-chiebukuro
