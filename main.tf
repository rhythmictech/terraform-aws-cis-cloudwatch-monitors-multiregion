provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

module "cis-cloudwatch-monitors" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1"

  count = contains(var.enabled_regions, "us-east-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  provider {
    aws = "aws.us-east-1"
  }
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

module "cis-cloudwatch-monitors" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1"

  count = contains(var.enabled_regions, "us-east-2") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  provider {
    aws = "aws.us-east-1"
  }
}
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_us_west_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.us-west-1
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

resource "aws_guardduty_organization_admin_account" "guardduty_us_west_2" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.us-west-2
}

provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_ca_central_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.ca-central-1
}

provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_eu_central_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.eu-central-1
}

provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_eu_west_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.eu-west-1
}

provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}

resource "aws_guardduty_organization_admin_account" "guardduty_eu_west_2" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.eu-west-2
}

provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
}

resource "aws_guardduty_organization_admin_account" "guardduty_eu_west_3" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.eu-west-3
}

provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_eu_north_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.eu-north-1
}

provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_ap_northeast_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.ap-northeast-1
}

provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
}

resource "aws_guardduty_organization_admin_account" "guardduty_ap_northeast_2" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.ap-northeast-2
}

provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_ap_southeast_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.ap-southeast-1
}

provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
}

resource "aws_guardduty_organization_admin_account" "guardduty_ap_southeast_2" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.ap-southeast-2
}

provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_ap_south_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.ap-south-1
}

provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
}

resource "aws_guardduty_organization_admin_account" "guardduty_sa_east_1" {
  admin_account_id = var.guardduty_admin_account

  provider = aws.sa-east-1
}
