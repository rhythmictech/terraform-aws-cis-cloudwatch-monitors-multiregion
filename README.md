# terraform-terraform-template
Template repository for terraform modules. Good for any cloud and any provider.

[![tflint](https://github.com/rhythmictech/terraform-terraform-template/workflows/tflint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-terraform-template/actions?query=workflow%3Atflint+event%3Apush+branch%3Amaster)
[![tfsec](https://github.com/rhythmictech/terraform-terraform-template/workflows/tfsec/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-terraform-template/actions?query=workflow%3Atfsec+event%3Apush+branch%3Amaster)
[![yamllint](https://github.com/rhythmictech/terraform-terraform-template/workflows/yamllint/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-terraform-template/actions?query=workflow%3Ayamllint+event%3Apush+branch%3Amaster)
[![misspell](https://github.com/rhythmictech/terraform-terraform-template/workflows/misspell/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-terraform-template/actions?query=workflow%3Amisspell+event%3Apush+branch%3Amaster)
[![pre-commit-check](https://github.com/rhythmictech/terraform-terraform-template/workflows/pre-commit-check/badge.svg?branch=master&event=push)](https://github.com/rhythmictech/terraform-terraform-template/actions?query=workflow%3Apre-commit-check+event%3Apush+branch%3Amaster)
<a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

## Example
Here's what using the module will look like
```hcl
module "example" {
  source = "rhythmictech/terraform-mycloud-mymodule
}
```

## About
A bit about this module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |

## Providers

| Name | Version |
|------|---------|
| aws.ap-northeast-1 | n/a |
| aws.ap-northeast-2 | n/a |
| aws.ap-south-1 | n/a |
| aws.ap-southeast-1 | n/a |
| aws.ap-southeast-2 | n/a |
| aws.ca-central-1 | n/a |
| aws.eu-central-1 | n/a |
| aws.eu-north-1 | n/a |
| aws.eu-west-1 | n/a |
| aws.eu-west-2 | n/a |
| aws.eu-west-3 | n/a |
| aws.sa-east-1 | n/a |
| aws.us-west-1 | n/a |
| aws.us-west-2 | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloudtrail\_log\_group | ARN of the CloudWatch log group for CloudTrail | `string` | n/a | yes |
| notification\_topic\_arn | ARN of the SNS Topic to send notifications to | `string` | n/a | yes |
| enabled\_regions | Regions to enable module in | `string` | <pre>[<br>  "us-east-1",<br>  "us-east-2",<br>  "us-west-1",<br>  "us-west-2",<br>  "ca-central-1",<br>  "eu-central-1",<br>  "eu-west-1",<br>  "eu-west-2",<br>  "eu-west-3",<br>  "eu-north-1",<br>  "ap-northeast-1",<br>  "ap-northeast-2",<br>  "ap-southeast-1",<br>  "ap-southeast-2",<br>  "ap-south-1",<br>  "sa-east-1"<br>]</pre> | no |
| tags | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| tags\_module | Tags Module in it's entirety |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Getting Started
This workflow has a few prerequisites which are installed through the `./bin/install-x.sh` scripts and are linked below. The install script will also work on your local machine. 

- [pre-commit](https://pre-commit.com)
- [terraform](https://terraform.io)
- [tfenv](https://github.com/tfutils/tfenv)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [tfsec](https://github.com/tfsec/tfsec)
- [tflint](https://github.com/terraform-linters/tflint)

We use `tfenv` to manage `terraform` versions, so the version is defined in the `versions.tf` and `tfenv` installs the latest compliant version.
`pre-commit` is like a package manager for scripts that integrate with git hooks. We use them to run the rest of the tools before apply. 
`terraform-docs` creates the beautiful docs (above),  `tfsec` scans for security no-nos, `tflint` scans for best practices. 
