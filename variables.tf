########################################
# General Vars
########################################

variable "cloudtrail_log_group" {
  description = "ARN of the CloudWatch log group for CloudTrail"
  type        = string
}

variable "notification_topic_arn" {
  description = "ARN of the SNS Topic to send notifications to"
  type        = string
}

variable "tags" {
  default     = {}
  description = "User-Defined tags"
  type        = map(string)
}

variable "enabled_regions" {
  description = "Regions to enable module in"
  type        = list(string)

  default = [
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2",
    "ca-central-1",
    "eu-central-1",
    "eu-west-1",
    "eu-west-2",
    "eu-west-3",
    "eu-north-1",
    "ap-northeast-1",
    "ap-northeast-2",
    "ap-southeast-1",
    "ap-southeast-2",
    "ap-south-1",
    "sa-east-1"
  ]
}
