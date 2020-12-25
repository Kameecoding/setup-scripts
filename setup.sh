sudo pacman -Syy git base-devel vlc git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syy  --noconfirm visual-studio-code-bin spotify jdk11-adoptopenjdk libreoffice jetbrains-toolbox docker nvm chormium dbeaver pencil staruml steam ntfs-3g logiops dropbox nordic-theme-git 
#filebot47 ffmpeg 
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="mortalscumbag"/g' ~/.zshrc
source ~/.zshrc
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
./nord-gnome-terminal/src/nord.sh
sudo mkdir /mnt/media /mnt/games
sudo chown 1000:1000 -R /mnt/media
sudo chown 1000:1000 -R /mnt/games
echo "UUID=DA0203E20203C28D /mnt/media          ext4    defaults 0 0" | sudo tee -a /etc/fstab
echo "UUID=9E5CB0D35CB0A783 /mnt/games          ext4    defaults 0 0" | sudo tee -a /etc/fstab
