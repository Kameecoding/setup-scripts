sudo pacman -Syy git base-devel vlc git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syy  --noconfirm visual-studio-code-bin spotify jdk11-adoptopenjdk libreoffice jetbrains-toolbox docker nvm chormium dbeaver pencil staruml steam ntfs-3g logiops dropbox nordic-theme-git 
#filebot47 ffmpeg 
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
