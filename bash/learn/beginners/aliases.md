# BASH: ALIASES

We recommend you to create a specific file (`.bash_aliases.sh`) to place your aliases.

```bash
# simple command-line alias
alias l="ls -l"
alias la="ls -la"

# multi command-line alias
function git_push
{
    git stage $1
    git commit -m $2
    git push
}
alias f=my_funtion
```
