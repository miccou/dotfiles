# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add my theme
git clone git@github.com:miccou/sensa-theme.git ~/.oh-my-zsh/custom/themes

# install homebrew & my fav
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install awscli bun ffmpeg gh mods nvm pwgen 