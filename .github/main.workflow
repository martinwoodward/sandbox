workflow "Issue Comment" {
  resolves = ["echo"]
  on = "issue_comment"
}

action "echo" {
  uses = "martinwoodward/gh-actions/echo@master"
  env = {}
}

