## Task 3 

### description

I did an exmaple for task, and it includes all steps in task3.

* 1.The backend.tf is for database.
* 2.The variables.tf is for variables in vps.
* 3.The terraform.tfvars is for values of variables.
* 4.The vpc.tf is for Gateway and Web-application.
* 5.The zap_scan.yaml is for security scanner.But I think it has a little problems still.

### Fix instructions

At the beginning just put on the code configuration related to the task3, this time submit the complete configuration and create the `outputs.tf` file for better testing.

Now just establish the network architecture of stg's vpc, only operate under the directory `/terraform/vpc/stg_cn_rubin`, other empty directories are resources not yet established, will gradually add later, such as `/terraform/iam` directory, later will certainly create the stg environment and prd environment, other `/terraform/s3`, `/terraform/shard` directories are also the same.

* Project tree

  ```
  .
  └── terraform  
      ├── iam  
      ├── modules  
      ├── s3  
      ├── shard 
      └── vpc  
          ├── prd_cn_rubin  
          └── stg_cn_rubin  
              ├── backend.tf                               
              ├── bastion.tf
              ├── common.tf
              ├── outputs.tf
              ├── terraform.tfvars
              ├── variables.tf
              └── vpc.tf
  ```

* Possible errors

  In `terraform.tfvars` file.   I don't think in your aws has the same `availability_zones`, So if it is possible, please change this configuration.

  By the way. I changed the region  to `us-east-2` so that it can be tested well.

