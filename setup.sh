sudo pacman -Syy git base-devel vlc git nvidia chromium docker ntfs-3g steam --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syy  --noconfirm visual-studio-code-bin spotify jdk11-adoptopenjdk libreoffice jetbrains-toolbox nvm dbeaver pencil staruml logiops ristretto dropbox nordic-theme-git qbittorrent teams skypeforlinux-stable-bin ufetch insomnia
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
echo "UUID=DA0203E20203C28D /mnt/media          ntfs-3g    defaults 0 0" | sudo tee -a /etc/fstab
echo "UUID=9E5CB0D35CB0A783 /mnt/games          ntfs-3g    defaults 0 0" | sudo tee -a /etc/fstab
sudo mount /mnt/media
sudo mount /mnt/games
echo 'alias gfs="git fetch && git status"' >> ~/.zshrc
echo 'alias gpp="git pull && git push"' >> ~/.zshrc
