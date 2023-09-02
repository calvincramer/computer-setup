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
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install sublime-text


# copy the sublime preferences in this repo
cp sublime/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/Preferences.sublime-settings

# copy the sublime keymap preferences in this repo
cp "sublime/Default (Linux).sublime-keymap" ~/.config/sublime-text/Packages/User/"Default (Linux).sublime-keymap"
```
- In sublime text:
    - ctrl+shift+p - UI: Select Theme - Default Dark
    - ctrl+shift+p - Install Package Control


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

# Spotify
# sudo snap install spotify     # Fuck snap
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client


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
## Ubuntu 22 Remove Firefox as Snap, Install from apt
```sh
sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa
echo -e '\nPackage: *\nPin: release o=LP-PPA-mozillateam\nPin-Priority: 1001\n' | sudo tee /etc/apt/preferences.d/mozilla-firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
sudo apt install firefox
````

## Firefox disable gtk theme
```sh
search "about:config" in firefox search bar
enter widget.content.gtk-theme-override
enter "Arc" as string value
restart firefox
```

## Firefox Customization
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

# Ubuntu 22 No multi-monitor no sticky edges
- Mouse stops for a bit when trying to move to other monitor where the dock is
- only a problem when auto hiding dock is enabled and when dock is not on bottom
- fix by moving dock to bottom
```sh
# Did not work:
sudo apt-get install compizconfig-settings-manager
sudo ccsm
# Snapping Windows -> Behavior -> Snap Type -> disable

# Not applicable to Ubunutu 22
# sudo apt-get install unity-tweak-tool

# Did not work:
gsettings set org.gnome.shell.overrides edge-tiling false
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
0   #073642     #0C87A6
1   #DC322F     -
2   #859900     #5DB016
3   #B58900     #DF7C07
==========================
4   #268BD2     -
5   #D33682     -
6   #2AA198     #924FC6
7   #EEE8D5     -
==========================
8   #002B36     #395A63
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



# Obsidian note taking
- Credit to here: https://gist.github.com/shaybensasson/3e8e49af92d7e5013fc77da22bd3ae4c
```sh
sudo apt-get install fuse libfuse2

icon_url="https://cdn.discordapp.com/icons/686053708261228577/1361e62fed2fee55c7885103c864e2a8.png"
dl_url=$(curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest | grep "browser_download_url.*AppImage" | tail -n 1 | cut -d '"' -f 4)

if [[ -z "$dl_url" ]]; then
    echo "missing download link"
    exit 1
fi

curl --location --output Obsidian.AppImage "${dl_url}"
curl --location --output obsidian.png "${icon_url}"

sudo mkdir -p /opt/obsidian/
sudo mv Obsidian.AppImage /opt/obsidian
sudo chmod u+x /opt/obsidian/Obsidian.AppImage
sudo mv obsidian.png /opt/obsidian
sudo ln -s /opt/obsidian/obsidian.png /usr/share/pixmaps

sudo su
echo "[Desktop Entry]
Type=Application
Name=Obsidian
Exec=/opt/obsidian/Obsidian.AppImage
Icon=obsidian
Terminal=false" > /usr/share/applications/obsidian.desktop
exit

update-desktop-database /usr/share/applications

# Check worked by trying to run obsidian
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

# Zoom
- download site is here: https://zoom.us/download?os=linux
```sh
sudo apt-get update
sudo apt-get update
sudo apt-get install libglib2.0-0 \
                     libgstreamer-plugins-base0.10-0  \
                     libxcb-shape0 \
                     libxcb-shm0 \
                     libxcb-xfixes0 \
                     libxcb-randr0 \
                     libxcb-image0 \
                     libfontconfig1 \
                     libgl1-mesa-dev \
                     libgl1-mesa-glx \
                     libxi6 \
                     libsm6 \
                     libxrender1 \
                     libpulse0 \
                     libxcomposite1 \
                     libxslt1.1 \
                     libsqlite3-0 \
                     libxcb-keysyms1 \
                     libxcb-xtest0 \
                     ibus
sudo apt --fix-broken install
cd /tmp
mkdir zm
cd zm
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg --install zoom_amd64.deb
cd /tmp
rm -rf zm
```

# VSCodium
```sh
curl -fSsL https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscodium.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/vscodium.gpg] https://download.vscodium.com/debs vscodium main" | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update
sudo apt install codium -y
```

## Visual Studio Code
```sh
sudo su
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /usr/share/keyrings/vscode.gpg

echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | tee /etc/apt/sources.list.d/vscode.list
apt update
apt install code
exit
```

## Uninstall vscode
```sh
sudo apt purge code
sudo apt autoremove
sudo rm /usr/share/keyrings/vscode.gpg
sudo rm /etc/apt/sources.list.d/vscode.list
```

# NeoVim
```sh
# Install nvim
# sudo apt-get install neovim nodejs   # nvim packages are old
# Install from source: https://github.com/neovim/neovim/wiki/Building-Neovim
# choose the stable branch

# nvm / js for treesitter or other things, I forget
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
# Open a new terminal
nvm install v16
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim
    :PlugInstall
    :UpdateRemotePlugins
    :q
```

# docker
```sh
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce
sudo systemctl status docker    # check

# Add user to docker group to run docker commands without sudo
sudo usermod -aG docker ${USER}

# logout and log back in
```

# Virtual Box
```sh
sudo apt install virtualbox
```

# kubernetes
```sh
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm ./kubectl
```

# minikube
```sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install -o root -g root -m 0755 minikube-linux-amd64 /usr/local/bin/minikube
```

# yq
```sh
# Preinstalled
sudo wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
sudo chmod a+x /usr/local/bin/yq
```

# jq
```sh
sudo apt install jq
```

# jqp
- Requires golang
```sh
git clone git@github.com:noahgorstein/jqp.git
cd jqp
go build
sudo mv ./jqp /usr/local/bin
```

# pycharm
## Snap
```sh
sudo snap install pycharm-community --classic
```

## Binary
```sh
cd $(mktemp --directory)
# Go here to get latest version, click download then see "direct link" link for latest URL
#    https://www.jetbrains.com/pycharm/download/#section=linux
wget -O pycharm.tar.gz https://download.jetbrains.com/python/pycharm-community-2022.3.3.tar.gz
sudo mkdir -p /opt/pycharm
sudo tar --directory /opt/pycharm -xf pycharm.tar.gz
rm pycharm.tar.gz

# Add this to aliases:
alias pycharm='/opt/pycharm/pycharm-community-2022.2.3/bin/pycharm.sh'

# Run
pycharm
# Tools -> Create Desktop Entry
```

<!--
cat << EOF > ~/.local/share/applications/PyCharm.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Name=Pycharm
# Only KDE 4 seems to use GenericName, so we reuse the KDE strings.
# From Ubuntu's language-pack-kde-XX-base packages, version 9.04-20090413.
GenericName=Python IDE
Exec=/opt/pycharm/pycharm-community-2022.2.3/bin/pycharm.sh
Terminal=false
Icon=\"/opt/pycharm/pycharm-community-2022.2.3/bin/pycharm.png\"
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow
Icon[en_US]=/opt/pycharm/pycharm-community-2022.2.3/bin/pycharm.png"
EOF
-->

## pycharm options:
- Settings
    - Keymap
       - Toggle Presentation mode     -> F9
       - Toggle Distraction Tree mode -> F10
       - Toggle full screen mode      -> F11
       - Toggle Zen mode              -> F12
       - Run                          -> F6
       - Debug                        -> Shift + F6
       - Refector -> Rename...        -> ctrl + r
       - Editor Tabs -> Select Next Tab -> ctrl + tab
       - Editor Tabs -> Select Previous Tab -> shift + ctrl + tab
    - Editor
        - General
            - Change font size with Ctrl+Mouse Wheel (true)
            - Editor Tabs
                - Mark modified -> true
                - Tab limit -> 100

# IntelliJ
- download: `https://www.jetbrains.com/idea/download/?section=linux`
```sh
cd ~/Downloads
mkdir /tmp/z
mv ideaIC-*.tar.gz idea.tar.gz
mv idea.tar.gz /tmp/z
cd /tmp/z
tar -xzf idea-xxx.tar.gz
sudo mv idea-IC-* /opt
/opt/idea-IC-*/bin/idea.sh
# Open a folder as a project
# Tools -> Create Desktop Entry
# Run 'IntelliJ' app with OS app launcher
```

# Rust
```sh
sudo apt install curl build-essential gcc make
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Add the following to your bashrc or equivalent
. "$HOME/.cargo/env"

# Then check:
source ~/.bashrc
rustc -V
```

# Bat (better cat)
```sh
git clone --depth 1 git@github.com:sharkdp/bat.git
cd bat
cargo install --locked bat      # Need rust to build
sudo cp ~/.cargo/bin/bat /usr/local/bin
cd ..
rm -rf bat

# Add alias to override cat
alias cat="bat"
```

# zsh
```sh
sudo apt install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# Add "zsh-autosuggestions" to plugin list ~/.zshrc:
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-autocomplete
    colored-man-pages
    docker
    golang
)


chsh
/bin/zsh
```