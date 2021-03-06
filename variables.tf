# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "name_prefix" {
  description = "A prefix used for naming resources."
}

variable "vpc_id" {
  description = "The VPC ID."
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = "list"
}

variable "username" {
  description = "Username for the master DB user."
}

variable "password" {
  description = "Password for the master DB user."
}

variable "database_name" {
  description = "Name for an automatically created database on cluster creation."
  default     = "main"
}

variable "port" {
  description = "The port on which the DB accepts connections."
  default     = "5439"
}

variable "engine" {
  description = "The name of the database engine to be used for this DB cluster."
  default     = "aurora-postgresql"
}

variable "engine_version" {
  description = "The engine version to use."
  default     = ""
}

variable "instance_type" {
  description = "The DB instance class to use."
  default     = "db.r4.large"
}

variable "instance_count" {
  description = "Number of DB instances to provision for the cluster."
  default     = "1"
}

variable "publicly_accessible" {
  description = "Bool to control if instances is publicly accessible."
  default     = "false"
}

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this cluster from a snapshot."
  default     = ""
}

variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  default     = "false"
}

variable "kms_key_arn" {
  description = "The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  default     = ""
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created."
  default     = "false"
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = "map"
  default     = {}
}
