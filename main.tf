provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

module "us_east_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "us-east-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.us-east-1
  }
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

module "us_east_2" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "us-east-2") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.us-east-1
  }
}

provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
}

module "us_west_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "us-west-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.us-west-1
  }
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

module "us_west_2" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "us-west-2") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.us-west-2
  }
}

provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

module "ca_central_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "ca-central-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.ca-central-1
  }
}

provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}

module "eu_central_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "eu-central-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.eu-central-1
  }
}

provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
}

module "eu_west_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "eu-west-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.eu-west-1
  }
}

provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}

module "eu_west_2" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "eu-west-2") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.eu-west-2
  }
}

provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
}

module "eu_west_3" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "eu-west-3") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.eu-west-3
  }
}

provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
}

module "eu_north_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "eu-north-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.eu-north-1
  }
}

provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
}

module "ap_northeast_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "ap-northeast-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.ap-northeast-1
  }
}

provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
}

module "ap_northeast_2" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "ap-northeast-2") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.ap-northeast-2
  }
}

provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
}

module "ap_southeast_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "ap-southeast-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.ap-southeast-1
  }
}

provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
}

module "ap_southeast_2" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "ap-southeast-2") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.ap-southeast-2
  }
}

provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

module "ap_south_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "ap-south-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.ap-south-1
  }
}

provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
}

module "sa_east_1" {
  source  = "rhythmictech/cis-cloudwatch-monitors/aws"
  version = "~> 1.1.0"

  count = contains(var.enabled_regions, "sa-east-1") ? 1 : 0

  log_group        = var.cloudtrail_log_group
  notification_arn = var.notification_topic_arn
  tags             = var.tags

  providers = {
    aws = aws.sa-east-1
  }
}
