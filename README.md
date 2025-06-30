# tf-two-regions-sample

## AWS Multi-Region S3 Example

This Terraform project demonstrates provisioning AWS S3 buckets in two different regions using provider aliases.

### 🔧 Regions Used

- `us-east-1` (alias: use1)
- `us-west-2` (alias: usw2)

### 🚀 Usage

```bash
terraform init

terraform apply \
  -var="bucket_name_use1=my-tf-bucket-east-1234" \
  -var="bucket_name_usw2=my-tf-bucket-west-5678"
