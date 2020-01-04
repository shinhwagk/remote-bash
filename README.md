## Usage

```yml
name: test
on: [push]
jobs:
  test:
    runs-on: [ubuntu-18.04]
    steps:
      - name: remote-bash
        uses: shinhwagk/remote-bash@0.0.1
        with:
          args: arg1 arg2
        env:
          REMOTE_BASH_URL: https://raw.githubusercontent.com/shinhwagk/remote-bash/master/test.sh
```

```hcl
action "exec remote shell script" {
  uses = "shinhwagk/remote-bash@master"
  env = {
    REMOTE_BASH_URL = "https://raw.githubusercontent.com/shinhwagk/remote-bash/master/test.sh"
  }
  args = "arg1 arg2"
}
```
