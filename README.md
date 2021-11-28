# static-website-terraform-aws
build a static website with S3 + CloudFront + ACM + Route53

Background

I referenced Alex Hyett's guide here to build this: https://www.alexhyett.com/terraform-s3-static-website-hosting

There are very few written code changes, but I did make some design changes to make use of Terraform modules.  This required me to write outputs.tf files that don't appear in the Hyett guide.  

Requires a pre-registered domain name which can be put into the .tfvars file (.gitignored).  I got mine through AWS Route53.

What This Does

This will build you a static website hosted on S3 and delivered to edge users securely with AWS-native CDN, CloudFront.  It will create a handful of resources to include 2 x S3 buckets (a root and www version), 2 x CloudFront distros (same), a TLS certificate (via Amazon Certificate Manager), a hosted zone in Route53, as well as 2 alias records in Route53.  The code is stored in an S3 backend (you will have to provide this as well).  

