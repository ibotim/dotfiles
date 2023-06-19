# Install zsh, curl
apt install zsh curl

# Install oh_my_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove .zshrc created by oh_my_zsh
rm $HOME/.zshrc

# Install PowerLevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Clone dotfiles as bare repository and checkout 
git clone --bare https://github.com/ibotim/dotfiles $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout

# Change default shell to zsh
chsh -s $(which zsh)
