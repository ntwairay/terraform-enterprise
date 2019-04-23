# Please refer to the README.md for additional documentation on each variable and additional optional variables that may be set.

# Required Variables
#
# The AWS region to deploy into.
# Example: us-east-1
 region = "ap-southeast-2"
#
# ami_id =
#
# The name that cluster will be known as. This value needs to match the DNS setup for proper operations.
# Example: tfe-eng01.mycompany.io
# fqdn =
#
# An AWS certificate ARN. This is the certification that will be used by the ELB for the cluster.
# Example: arn:aws:acm:us-west-2:241656615859:certificate/f32fa674-de62-4681-8035-21a4c81474c6
# cert_id =
#
# Subnet id of the subnet that the cluster's instance will be placed into.
# If this is a public subnet, the instance will be assigned a public IP.
# This is not required as the primary cluster interface is an ELB registered with the hostname.
# Example: subnet-0de26b6a
# instance_subnet_id =
#
#
# Subnet id of the subnet that the cluster's load balancer will be placed into.
# If this is a public subnet, the load balancer will be accessible from the
# public internet. This is not required - the ELB can be marked as private via
# the `internal_elb` option below.
# Example: subnet-0de26b6a
# elb_subnet_id =
#
# Subnet ids that will be used to create the data services (RDS and ElastiCache) used by the cluster.
# There must be 2 subnet ids given for proper redundency.
# Example: ["subnet-0ce26b6b", "subnet-d0f35099"]
# data_subnet_ids =
#
# Password that will be used to access RDS. Example: databaseshavesecrets
# db_password =
#
# Name of the S3 bucket to store artifacts used by the cluster into. This bucket is automatically created.
# Example: tfe-mycompany-data
# bucket_name =

# Optional variables
# Name of AWS ssh key pair that will be used. The pair must already exist, it
# will not be created. If this variable is not set, no SSH access will be
# available to the TFE instance.
# key_name =
#
# This Terraform config will create and manage the bucket named in `bucket_name`.
# Set this to false if you are reusing an existing bucket.
# Default: true
# manage_bucket =
#
# Specifies the ARN for a KMS key to use rather than having one created automatically.
# Example: arn:aws:kms:us-west-2:98765432123:key/9c54321-fff3-4333-55d5-7f8a9aefb34c
# kms_key_id =
#
# Username that will be used to access RDS.
# Default: atlas
# db_username =
#
# Disk size of the RDS instance to create.
# Default: 80
# db_size_gb =
#
# Instance type of the RDS instance to create.
# Default: db.m4.large
# db_instance_class =
#
# Configure if the RDS cluster should multiple AZs to improve snapshot performance.
# Default: true
# db_multi_az =
#
# Previously made snapshot to restore when RDS is created.
# This is for migration of data between clusters.
# Default: "" (Create...)
# db_snapshot_identifier =
#
# The id of a Route53 zone that a record for the cluster will be installed into.
# Leave this blank if your DNS is managed elsewhere.
# Example: ZVEF52R7NLTW6
# Default: "" (DNS record will not be managed by this Terraform config)
 zone_id = "ZOUDD37Y6IODN"
#
# If specifying zone_id, this should be set to the name that is used for the record to be registered with the zone.
# This value combined with the zone information will form the full DNS name for TFE.
# Example: emp-test
# Default: "" (DNS record will not be managed by this Terraform config)
 hostname = "ray-Terraform-enter"
#
# Used mostly for govcloud installations.
# Example: aws-us-gov
# Default: "aws" (This is the partition name for all standard AWS Regions)
# arn_partition =
#
# Indicate to AWS that the created ELB is internal only.
# Default: false (Marks the ELB public, assuming it is launched into a public subnet.)
# internal_elb =
#
# Shell code that should run on the first boot.
# Default: ""
# startup_script =
#
# No ElastiCache cluster will be created if this is set to true.
# We recommend setting this to true for new installations, as it will be the default in a future release.
# Default: false
 local_redis = true
#
# A url (http or https, with port) to proxy all external http/https request from the cluster to.
# Default: ""
# proxy_url =
#
# Hosts to exclude from proxying, in addition to the default set. (Only applies when proxy_url is set.)
# Default: ""
# no_proxy =
#
# Setting for server-side encryption of objects in S3; if provided, must be set to "aws:kms".
# Default: ""
# archivist_sse =
#
# KMS key ID (full ARN) for server-side encryption of objects stored in S3.
# Default: ""
# archivist_kms_key_id =
