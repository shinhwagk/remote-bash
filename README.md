## Usage
```hcl
action "exec remote shell script" {
  uses = "shinhwagk/action-remote-bash@master"
  env = {
    REMOTE_BASH_URL = "https://raw.githubusercontent.com/shinhwagk/github-action-remote-bash/master/test.sh"
  }
  args = "arg1 arg2"
}
```
