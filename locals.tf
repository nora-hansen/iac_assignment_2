locals {
  workspace_suffix = terraform.workspace == "default" ? "" : terraform.workspace

  common_tags = {
    company      =    var.company
    project      = "${var.company}-${var.project}"
    env          =    local.workspace_suffix
  }
}