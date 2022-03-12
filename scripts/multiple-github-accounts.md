# Multiple Github accounts on the same computer
Solution: https://gist.github.com/jexchan/2351996

## TL/DR
1. create two ssh keys (using ssh-keygen)
2. create a ~/.ssh/config file
3. (optional) add user.name/email to the repo's .git file (git config user.name/email).
4. Note: in one case my local setup could not connect to GH (git@github.com: Permission denied (publickey)) so the following helped:

```
  If your ssh keys don't all show up with
  ssh-add -l
  you have to run
  ssh-add ~/.ssh/yourkey.rsa
```
5. this article may also help: https://docs.github.com/en/github/authenticating-to-github/troubleshooting-ssh/error-permission-denied-publickey

## NOTE
I have not tested it yet, but perhaps there is no need for multiple accounts, as you may use a single ssh key but define as many name/email pairs as you desire, one per repo.

Read more here: https://orrsella.com/2013/08/10/git-using-different-user-emails-for-different-repositories/