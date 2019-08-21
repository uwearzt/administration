# Ansible

## Useful commands

### Check all Ubuntu machines if restart is needed

```zsh
ansible -a "needrestart -b -r a" ubuntu
```

### Get uptime

```zsh
ansible -a "uptime" ubuntu:macos
```
