# Github Stuff

This how to contains common stuff i often find myself doing on github

## Create a new SSH key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```


## Setup Git Signing Key

if needed unset so that the default `openpgp` format will be used

```bash
git config --global --unset gpg.format
```

figure out the key you want to sign with
```bash
gpg -K
```

set the GPG signing key

```bash
git config --global user.signingkey <key-id>
```


configure git to sign all commits by default

```bash
git config --global commit.gpgsign true
git config --global tag.gpgSign true
```
