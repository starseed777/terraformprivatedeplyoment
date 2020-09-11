resource "aws_iam_user" "terraformIAM" {
  count = length(var.IAMnames)
  name  = var.IAMnames[count.index]

}