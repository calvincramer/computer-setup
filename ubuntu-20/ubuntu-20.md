These commands should be ran in: `<thisrepo>/ubuntu-20`


# Git (not included in Ubuntu minimal installation)
```sh
sudo apt install git        # Actually needed
git config --global user.email "calvincramer@gmail.com"
git config --global user.name "calvincramer"
```

# Update
```sh
sudo apt-get update
sudo apt-get upgrade
```

# Sublime Text
```sh
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text

# copy the sublime preferences in this repo
cp sublime3/Preferences.sublime-settings ~.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# copy the sublime keymap preferences in this repo
cp "sublime3/Default (Linux).sublime-keymap" ~.config/sublime-text-3/Packages/User/"Default (Linux).sublime-keymap"
```


# Ubuntu settings
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

# black python formatter
python3.7 -m pip install black
# Add this to bash alias:
alias my-black-3.7='black --target-version py37 --line-length 120'

# pycharm
sudo snap install pycharm-community --classic
# pycharm options:
# Settings -> Keymap
#   Toggle Presentation mode     -> F9
#   Toggle Distraction Tree mode -> F10
#   Toggle full screen mode      -> F11
#   Toggle Zen mode              -> F12
#   Run                          -> F6
#   Debug                        -> Shift + F6
#   Refector -> Rename...        -> ctrl + r
#   Editor Tabs -> Select Next Tab -> ctrl + tab
#   Editor Tabs -> Select Previous Tab -> shift + ctrl + tab

# Settings -> Editor -> General
#   Change font size with Ctrl+Mouse Wheel (true)
# Settings -> Editor -> Editor Tabs
#   Mark modified -> true
#   Tab limit -> 100

# spotify
sudo snap install spotify

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
# atom preferences
# Editor
#     * Tab Length -> 4


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

# audacity audio editor
sudo add-apt-repository ppa:ubuntuhandbook1/audacity
sudo apt update
sudo apt install audacity
```


# Firefox (uninstall, install) (if want to get more recent version of firefox)
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


# Qemu from source (probably don't need normally)
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

# Icons on Dock

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


# Terminal settings
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
Default color Text: #839496 -> #D5E3E6
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

# Clone other useful repos to `~/repos`
...



# Obsidian note taking - https://gist.github.com/shaybensasson/3e8e49af92d7e5013fc77da22bd3ae4c
```sh
#!/usr/bin/env bash
# see https://forum.obsidian.md/t/gnome-desktop-installer/499

set -euo pipefail

icon_url="https://cdn.discordapp.com/icons/686053708261228577/1361e62fed2fee55c7885103c864e2a8.png"
#dl_url=${1:-}
dl_url=$( curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest  \
    | grep "browser_download_url.*AppImage" | tail -n 1 | cut -d '"' -f 4 )

if [[ -z "$dl_url" ]]; then
    echo "missing download link"
    echo "usage: install-obsidian.sh"
    exit 1
fi

curl --location --output Obsidian.AppImage "$dl_url"
curl --location --output obsidian.png "$icon_url"

sudo mkdir --parents /opt/obsidian/
sudo mv Obsidian.AppImage /opt/obsidian
sudo chmod u+x /opt/obsidian/Obsidian.AppImage
sudo mv obsidian.png /opt/obsidian
sudo ln -s /opt/obsidian/obsidian.png /usr/share/pixmaps

echo "[Desktop Entry]
Type=Application
Name=Obsidian
Exec=/opt/obsidian/Obsidian.AppImage
Icon=obsidian
Terminal=false" > /usr/share/applications/obsidian.desktop

update-desktop-database /usr/share/applications
echo "install ok"
```

# Tmux
## From package manager
```sh
sudo apt-get install tmux
cp tmux/.tmux.conf ~
````

## From source
Installing dependencies:
```sh
sudo apt-get install libevent-dev
```

Tmux build
```sh
cd /tmp
mkdir build-tmux
cd build-tmux
git clone git@github.com:tmux/tmux.git
cd tmux
sh autogen.sh
./configure
# Only proceed if configure did not give errors
make -j 12
sudo make install
```
