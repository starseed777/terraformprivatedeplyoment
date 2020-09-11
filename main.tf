provider "aws" {
  version = "~> 3.0"
  region  = var.awsregion
  profile = var.awsprofile
}

provider "github" {
  token        = var.github_token
  organization = var.github_organization
}

module "iamusers" {
  source = "./iammodule"
}

module "gitrepos" {
  source = "./repomodule"
}

module "gitmembers" {
  source = "./membersmodule"
}

module "devservers" {
  source = "./ec2devmodule"
}
