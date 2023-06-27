# use following command to install
# curl -s https://raw.githubusercontent.com/ibotim/dotfiles/master/setupTerminal.sh | bash

# Install zsh, curl, git
#apt install zsh curl git -y

# Install oh_my_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove .zshrc created by oh_my_zsh
rm $HOME/.zshrc

# Install PowerLevel10k
git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Clone dotfiles as bare repository and checkout 
git clone --bare https://github.com/ibotim/dotfiles $HOME/dotfiles
git --git-dir=$HOME/dotfiles/ --work-tree=$HOME checkout

# Change default shell to zsh
chsh -s $(which zsh)

# Run zsh
zsh -i
