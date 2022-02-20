# ThinkPad T495 and Elementary OS 6.x

* F12 en boot

## Instalando Elementary 6

Seleccionar `Custom`

* Seleccionar la primera partición, marcar como `Use Partition` => `Use as:` `Boot (/boot/efi)`
* Root (`/`) y `/home/partition_data` como siempre

## Una vez instalado

```
sudo apt update
sudo apt upgrade
```

```
sudo apt install -y zsh vim git openssh-server filezilla gedit gpaste gdebi barrier
```
* reboot
```
cd /home/partition_data/juanlb_files
./crear_links.sh
chsh -s $(which zsh)
```
* reboot

### rbenv
```
sudo apt install -y rbenv
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv install 2.7.5
rbenv global 2.7.5
```

### git flow
```
wget --no-check-certificate -q  https://raw.github.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && sudo bash gitflow-installer.sh install stable; rm gitflow-installer.sh
```

### git config

```
git config --global user.email "juanlb@gmail.com"
git config --global user.name "juanlb"    
```

### Docker
```
sudo apt remove docker docker-engine docker.io containerd runc
sudo apt install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
```
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
```