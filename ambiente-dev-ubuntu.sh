ZSH + Oh My ZSH no Ubuntu (Instalando, configurando e otimizando o seu terminal)

#!/bin/bash

# Executar comandos a seguir para atualizar os pacotes
sudo apt update -y
sudo apt upgrade -y

# Instalar pacotes a seguir
sudo apt install dkms make perl gcc build-essential git curl -y

# Instalar Python 3.10 (opcional)
sudo apt install python3.10-full python3.10-dev

# Baixar e instalar VS Code: https://code.visualstudio.com/download
# Baixar e instalar Google Chrome: https://www.google.com/intl/pt-BR/chrome/

# Abaixo tudo é opcional

# Instalar e configurar ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar Spaceship Prompt
# https://github.com/spaceship-prompt/spaceship-prompt
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Mudar ~/.zshrc -> ZSH_THEME="spaceship"

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Mudar plugins
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Font optional (https://github.com/pdf/ubuntu-mono-powerline-ttf)
mkdir -p ~/.fonts
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
fc-cache -vf

# REBOOT!!!!!!!!!!!!!!!!!!!!!

### [Gnome Terminal](https://wiki.gnome.org/Apps/Terminal)

#### Install using Git

If you are a git user, you can install the theme by cloning the repo:

    $ git clone https://github.com/getomni/gnome-terminal.git

#### Install manually

Download using the [GitHub .zip download](https://github.com/getomni/gnome-terminal/archive/main.zip) option and unzip them.
    
#### Activating theme

1. You will need the `dconf` command:

    ```bash 
    $ sudo apt-get install dconf-cli 
    ```

2. Then you can run the installation script:

    ```bash
    $ cd gnome-terminal
    $ ./install.sh
    ```
