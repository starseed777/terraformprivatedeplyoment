resource "github_repository" "secretrepos" {
  count       = length(var.gitrepos)
  name        = var.gitrepos[count.index]
  description = "internal project"
  private     = true
}