#Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install zsh
brew install zsh

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Set zsh as main shell
chsh -s $(which zsh)

#Install powerlevel theme
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
#Fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc
echo "POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)" >> ~/.zshrc
echo "POWERLEVEL9K_PROMPT_ADD_NEWLINE=true" >> ~/.zshrc
echo "DEFAULT_USER=`whoami`">> ~/.zshrc
echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc

#byobu
brew install byobu

#Auto Suggestuib
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

#Syntax Highlight
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

#fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

#theFuck
brew install thefuck
echo "eval $(thefuck --alias)" >> ~/.zshrc

#AutoJump
brew install autojump
echo " [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh" >> ~/.zshrc