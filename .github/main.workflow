workflow "Issue Comment" {
  resolves = ["echo"]
  on = "issue_comment"
}

action "echo" {
  uses = "martinwoodward/gh-actions/echo@master"
  env = {}
}

workflow "Create Issue" {
  on = "issues"
  resolves = ["GitHub Action for Azure"]
}

action "GitHub Action for Azure" {
  uses = "Azure/github-actions/cli@6b73fe0c8ab2fd73549b242801b665ebb7e36369"
  args = "az --version"
}
