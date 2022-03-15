sudo pacman -Syy git base-devel vlc git nvidia chromium docker ntfs-3g steam go --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay
yay -Syy  --noconfirm zsh visual-studio-code-bin spotify jdk11-adoptopenjdk libreoffice jetbrains-toolbox nvm steam\
   dbeaver pencil staruml logiops ristretto dropbox nordic-theme-git qbittorrent teams skypeforlinux-stable-bin ufetch insomnia kronometer
git config --global user.email "andrej.kovac.ggc@gmail.com"
git config --global user.name "Kameecoding"
git config --global rebase.autoStash true
git config --global pull.rebase true
git config --global core.autocrlf input
yay -Syy filebot47 ffmpeg --noconfirm
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="mortalscumbag"/g' ~/.zshrc
source ~/.zshrc
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
./nord-gnome-terminal/src/nord.sh
sudo mkdir /mnt/media /mnt/games
sudo chown 1000:1000 -R /mnt/media
sudo chown 1000:1000 -R /mnt/games
echo "UUID=DA0203E20203C28D /mnt/media          ntfs-3g    defaults,umask=0000,uid=1000,gid=1001 0 0" | sudo tee -a /etc/fstab
echo "UUID=9E5CB0D35CB0A783 /mnt/games          ntfs-3g    defaults,umask=0000,uid=1000,gid=1001 0 0" | sudo tee -a /etc/fstab
sudo mount /mnt/media
sudo mount /mnt/games
echo 'alias gfs="git fetch && git status"' >> ~/.zshrc
echo 'alias gpp="git pull && git push"' >> ~/.zshrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' ~/.zshrc  # This loads nvm

##BLUETOOTH
yay -S --noconfirm bluez-utils
curl 'https://dlcdnets.asus.com/pub/ASUS/wireless/USB-BT400/DR_USB_BT400_1201710_Windows.zip' -o bt400-driver.zip
unzip bt400-driver.zip
cd Win10_USB-BT400_DRIVERS/Win10_USB-BT400_Driver_Package/64 && \
hex2hcd BCM20702A1_001.002.014.1443.1467.hex -o BCM20702A1-0b05-17cb.hcd && \
sudo mkdir -p /lib/firmware/brcm/ &&\
sudo cp BCM20702A1-0b05-17cb.hcd /lib/firmware/brcm/
