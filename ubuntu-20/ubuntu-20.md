* Assumed to be in this directory: `<thisrepo>/ubuntu-20`


# Ubuntu 20 minimal software install
```sh
sudo apt install git        # Actually needed
git config --global user.email "calvincramer@gmail.com"
git config --global user.name "calvincramer"
```

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

# copy the sublime preferences in this repo
cp sublime3/Preferences.sublime-settings ~.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# copy the sublime keymap preferences in this repo
cp "sublime3/Default (Linux).sublime-keymap" ~.config/sublime-text-3/Packages/User/"Default (Linux).sublime-keymap"
```

# ubuntu settings

* Appearance -> Auto-hide dock
* Sounds -> Volume Levels -> System Sounds -> Mute (no bell noise)

# Common, easy installs:
```sh
# bash aliases
cp bash/.bash_aliases ~/

# pip2 ubuntu 20 doesn't ship with python 2, won't find this package
# sudo apt install python-pip

# pip3
sudo apt install python3-pip

# gimp
sudo apt install gimp

# jupyter notebook
sudo pip3 install jupyter

# pycharm
sudo snap install pycharm-community --classic
# pycharm options:
# Settings -> Keymap
#   Toggle full screen mode -> F11
#   Run                     -> F6
#   Debug                   -> Shift + F6
# Settings -> Editor -> General
#   Change font size with Ctrl+Mouse Wheel (true)


# spotify
sudo snap install spotify

# tmux
sudo apt-get install tmux
cp tmux/.tmux.conf ~

# Libre office
sudo apt install libreoffice

# Inkscape
sudo apt-get install inkscape

# powerline (for tmux, bash) (eh)
# sudo pip install git+git://github.com/Lokaltog/powerline
# sudo apt-get install fonts-powerline

# atom text editor
wget -O atom-amd64.deb https://atom.io/download/deb
sudo apt install gdebi-core
sudo gdebi atom-amd64.deb
rm atom-amd64.deb
# atom packages
# Edit -> Preferences -> Install
#   * wordcount
#   * teletype


# Typora - markdown editor
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

# Set idle-delay time (set to lock screen after n time inactivity)
gsettings set org.gnome.desktop.session idle-delay $((60*60))

# vlc - media player
sudo apt install vlc
sudo apt install vlc-plugin-access-extra libbluray-bdj libdvdcss2

# chrome
sudo apt install gdebi-core wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
google-chrome   # test
rm google-chrome-stable_current_amd64.deb
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
```

## firefox disable gtk theme
```sh
search "about:config" in firefox search bar
enter widget.content.gtk-theme-override
enter "Arc" as string value
restart firefox
```

## firefox customization

* Add 1password

* sign in to firefox

* Customize
    * uncheck Title Bar
    * Toolbars -> Bookmarks toolbar
    * Themes -> Dark

* Preferences
    * General
        * General
            * Restore previous session check
        * Tabs
            * uncheck ctrl+tab cycles through tabs in recently used order

    * Home
        * Just have web search and top sites

    * Search
        * add search in toolbar

    * Privacy & Security
        * uncheck all in Firefox Data Collection and Use


# gnome-tweaks
```sh
sudo apt install gnome-tweaks
gnome-tweaks
```
* General
    * animations -> off
* Appearance
    * Applications -> Yaru-dark
* Top Bar
    * Clock -> Weekday on
* Workspaces
    * workspaces span multiple displays

## Add ARC theme (eh)
```sh
# sudo add-apt-repository ppa:noobslab/themes
# sudo apt-get update
# sudo apt-get install arc-theme
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

# Meld - git merge tool (not needed unless necessary)
```sh
sudo apt-get install meld
git config --global merge.tool meld
```

# dock

* files
* firefox
* chrome
* system monitor
* terminal
* sublime
* atom
* pycharm
* gimp
* inkscape


# terminal settings

* Profiles
    * Scrolling
        * limit scrollback to 99999
    * Colors
        * Unclick use colors from system theme
        * use transparent background -> a little
        * built-in schemes -> Solarized dark
        * Palette -> built-in schemes -> Solarized

Colors
```
Default color Text: #839496 -> #BFDADE
Default color Background: #002B36 -> #0C262C
```

Palette
```
From palette entry 0 to 15
#   Original    Set to
==========================
0   #073642     -
1   #DC322F     -
2   #859900     #5DB016
3   #B58900     #DF7C07
==========================
4   #268BD2     -
5   #D33682     -
6   #2AA198     #924FC6
7   #EEE8D5     -
==========================
8   #002B36     -
9   #CB4B16     -
10  #586E75     -
11  #657B83     -
==========================
12  #839496     -
13  #6C71C4     -
14  #93A1A1     -
15  #FDF6E3     -
```

# Etc
```sh
# sudo apt-get install nfs-kernel-server        # NFS
# sudo apt-get install expect
sudo apt install net-tools                      # netstat
sudo apt install curl                           # curl
# sudo apt install java-common                  # Code collaborator
# sudo apt install openjdk-8-jdk                # Code collaborator
# sudo apt-get install xterm                    # For simics
# sudo apt-get install xinetd tftpd tftp        # For booting boards
# sudo apt-get install csh                      # For ?
sudo apt-get install xclip                      # Useful tool
sudo apt install tree                           # Useful tool
sudo apt install git-all                        # In case you don't have git? (large download)
# sudo apt-get install cmake

```

# Clone other useful repos to ~/repos
