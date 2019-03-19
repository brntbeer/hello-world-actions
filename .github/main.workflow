workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./action-a"
  args = "\"Hello World, I'm $MY_NAME!\""
  env = {
    MY_NAME = "Mona"
  }
}
