sudo pacman -Syy git base-devel vlc git nvidia nvidia-settings chromium docker ntfs-3g steam --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syy  --noconfirm visual-studio-code-bin spotify jdk11-adoptopenjdk libreoffice jetbrains-toolbox nvm dbeaver pencil staruml logiops dropbox nordic-theme-git qbittorrent teams skypeforlinux-stable-bin
#filebot47 ffmpeg 
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="mortalscumbag"/g' ~/.zshrc
source ~/.zshrc
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
./nord-gnome-terminal/src/nord.sh
sudo mkdir /mnt/media /mnt/games
sudo chown 1000:1000 -R /mnt/media
sudo chown 1000:1000 -R /mnt/games
echo "UUID=DA0203E20203C28D /mnt/media          ntfs-3g    defaults 0 0" | sudo tee -a /etc/fstab
echo "UUID=9E5CB0D35CB0A783 /mnt/games          ntfs-3g    defaults 0 0" | sudo tee -a /etc/fstab
mount /mnt/media
moutn /mnt/games
