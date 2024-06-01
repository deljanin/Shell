sudo apt update -y
#install zsh and wget
sudo apt install zsh wget curl -y
#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#get the fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/JetBrainsMono.zip
#install the fonts
mkdir ~/.local/share/fonts
unzip -o JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -f -v
#make zsh the default shell
chsh -s $(which zsh)
#move the theme to the correct folder
cp agonster-edited.zsh-theme ~/.oh-my-zsh/custom/themes/agonster-edited.zsh-theme
#set the theme to my edited agonster theme
#echo 'export ZSH_THEME="agonster-edited"' | tee -a ~/.zshrc
sed -i 's/^export ZSH_THEME=.*/export ZSH_THEME="agonster-edited"/' ~/.zshrc

#Create the dircolors file
dircolors -p > ~/.dircolors
#Change the green background to transparent\
sed -i 's/^DIR.*/DIR 37;01/' ~/.dircolors #Text white
sed -i 's/^DIR.*/DIR 34;01/' ~/.dircolors #Text green
#sed -i 'tw/;42/;01/' ~/.dircolors #STICKY_OTHER_WRITABLE 30;01 # dir that is sticky and other-writable (+t,o+w)
#sed -i 'ow/;42/;01/' ~/.dircolors#OTHER_WRITABLE 34;01 # dir that is other-writable (o+w) and not sticky
#sed -i 'st/;42/;01/' ~/.dircolors#STICKY 37;01 # dir with the sticky bit set (+t) and not other-writable
#      'tw/OLD_STRING/NEW_STRING/'

#reload everything
source ~/.zshrc

#cleanup
rm JetBrainsMono.zip

#In your terminal application set the theme to SOLARIZED DARK

#If things go south refer to these URLS:
#http://www.bigsoft.co.uk/blog/2008/04/11/configuring-ls_colors
#https://stackoverflow.com/questions/40574819/how-to-remove-dir-background-in-ls-color-output
#https://ohmyz.sh/
#https://github.com/ohmyzsh/ohmyzsh/wiki
#https://zshthem.es/
