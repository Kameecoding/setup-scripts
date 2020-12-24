pacman -Syy vlc git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
yay -Syy visual-studio-code-bin spotify jdk11-adoptopenjdk 
#filebot47
