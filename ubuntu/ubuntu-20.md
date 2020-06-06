# Ubuntu 20 minimal software install
```sh
sudo apt install git
```

# update
```sh
sudo apt-get update
sudo apt-get upgrade
```

# ubuntu settings

* Appearance -> Auto-hide dock


# Sublime
```sh
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text
# copy the sublime preferences in this repo 
```

# bash
```sh
# copy the <repo>/bash/.bash_aliases to:
cp <repo>/bash/.bash_aliases ~/
```

# Pip, pip3
```sh
sudo apt install python-pip     # ubuntu 20 doesn't ship with python 2, won't find this package
sudo apt install python3-pip
```


# powerline (for tmux, bash)
```sh
sudo pip install git+git://github.com/Lokaltog/powerline
sudo apt-get install fonts-powerline
# See POWERLINE_INSTALL.md
```

# atom
```sh
wget -O atom-amd64.deb https://atom.io/download/deb
sudo apt install gdebi-core
sudo gdebi atom-amd64.deb
rm atom-amd64.deb
```

# firefox (uninstall, install) (if want to get more recent version of firefox)
```sh
# uninstall
sudo apt-get purge firefox
    # Delete these folders:
    ~/.mozilla/firefox/
    ~/.macromedia/
    ~/.adobe
    /etc/firefox/
    /usr/lib/firefox/
    /usr/lib/firefox-addons/
# install
sudo apt install firefox
sudo apt upgrade

    # override gtk-theme so firefox isn't completely BLACK
    firefox -> about:config in search bar
    search widget.content.gtk-theme-override
    add name of theme here
    restart firefox
```

## firefox disable gtk theme
```sh
search "about:config" in firefox search bar
enter widget.content.gtk-theme-override
enter "Arc" as string value
restart firefox
```

# gnome-tweaks
```sh
sudo apt install gnome-tweaks

# General
# animations -> off

# Appearance
# Applications -> Yaru-dark
```

## Add ARC theme
```sh
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install arc-theme
# then select it in gnome-tweaks

# sudo add-apt-repository ppa:noobslab/icons
# sudo apt-get update
# sudo apt-get install arc-icons
```

# Qemu 4.2 (probably don't need normally)
```sh
wget https://download.qemu.org/qemu-5.0.0-rc0.tar.xz
tar xvJf qemu-5.0.0-rc0.tar.xz
cd qemu-5.0.0-rc0
./configure
make -j 12
```

# Typora - markdown editor
```sh
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora
```

# Set idle-delay time (set to lock screen after n time inactivity)
```sh
gsettings set org.gnome.desktop.session idle-delay $((60*60))
```

# Meld - git merge tool
```sh
sudo apt-get install meld
git config --global merge.tool meld
```

# Etc
```sh
# sudo apt-get install nfs-kernel-server      # NFS
# sudo apt-get install expect
sudo apt install net-tools                  # netstat
# sudo apt install java-common                # Code collaborator
# sudo apt install openjdk-8-jdk              # Code collaborator
# sudo apt-get install xterm                  # For simics
# sudo apt-get install xinetd tftpd tftp      # For booting boards
# sudo apt-get install csh                    # For ?
sudo apt-get install xclip                  # Useful tool
sudo apt install tree                       # Useful tool
sudo apt-get install tmux                   # Useful tool
sudo apt install git-all                    # In case you don't have git? (Very large download)
# sudo apt-get install cmake
```
