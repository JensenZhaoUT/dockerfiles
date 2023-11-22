## Clean the system
Run the following command to uninstall all conflicting packages:
```
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
```
## Setup repository for installation
#### Install using the apt repository
```bash
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
```

#### Add Docker's official GPG key
```bash
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

#### Use the following command to set up the repository
```
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
## Install docker engine
#### Update the apt package index:
```
sudo apt-get update
```

#### Install docker engine
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

#### Verify that the Docker Engine installation is successful by running the hello-world image.
```
sudo docker run hello-world
```

## Add user
#### Create the docker group.
```
sudo groupadd docker
```

#### Add your user to the docker group.
```
sudo usermod -aG docker $USER
```

#### Restart
Log out and log back in so that your group membership is re-evaluated.