sudo pacman -Syy git base-devel vlc git --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syy  --noconfirm visual-studio-code-bin spotify jdk11-adoptopenjdk libreoffice jetbrains-toolbox docker nvm brave dbeaver pencil staruml steam ntfs-3g logiops dropbox 
#filebot47 ffmpeg 
