sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

ohmyzsh
mkdir -p ~/.oh-my-zsh/custom/completions
chmod -R 755 ~/.oh-my-zsh/custom/completions
ln -s /opt/kubectx/completion/_kubectx.zsh ~/.oh-my-zsh/custom/completions/_kubectx.zsh
ln -s /opt/kubectx/completion/_kubens.zsh ~/.oh-my-zsh/custom/completions/_kubens.zsh
echo "fpath=($ZSH/custom/completions $fpath)" >> ~/.zshrc