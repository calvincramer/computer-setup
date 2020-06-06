# update
```sh
sudo apt-get update
sudo apt-get upgrade
```

# Sublime
```sh
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text
```

# Pip, pip3
```sh
sudo apt install python-pip
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

# firefox (uninstall, install)
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
    rester firefox
```

# gnome-tweaks
```sh
sudo apt install gnome-tweaks
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

# Qemu 4.2
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
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module     # Fix workbench / simics-eclipse `sudo apt install libcanberra-gtk-module libcanberra-gtk3-module` "error"
sudo apt-get install nfs-kernel-server      # NFS
sudo apt-get install expect                 # expect (needed for boost testing)
sudo apt install net-tools                  # netstat
sudo apt install java-common                # Code collaborator
sudo apt install openjdk-8-jdk              # Code collaborator
sudo apt-get install xterm                  # For simics
sudo apt-get install xinetd tftpd tftp      # For booting boards
sudo apt-get install csh                    # For ?
sudo aptitude install xclip                 # Useful tool
sudo apt install tree                       # Useful tool
sudo apt-get install tmux                   # Useful tool
sudo apt install git-all                    # In case you don't have git?
sudo apt-get install libstdc++6:i386 libgtk2.0-0:i386 libxtst6:i386         # For vx7
sudo apt-get install gtk2-engines-murrine:i386 libcanberra-gtk-module:i386 unity-gtk2-module:i386 libatk-adaptor:i386   # for vx7
sudo apt-get install cmake

```
