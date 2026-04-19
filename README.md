# debmon-repo

## Adding the repo

```sh
curl -fsSL https://demonkingswarn.is-a.dev/debmon-repo/pubkey.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/debmon-repo.gpg

echo "deb [arch=amd64] https://demonkingswarn.is-a.dev/debmon-repo stable main" | sudo tee /etc/apt/sources.list.d/debmon-repo.list

sudo apt update
```
