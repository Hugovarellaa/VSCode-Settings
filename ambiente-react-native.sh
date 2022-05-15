
COMO CONFIGURAR O AMBIENTE REACT NATIVE NO LINUX Ubuntu (Debian)

# Executar comandos a seguir para atualizar os pacotes
sudo apt update -y
sudo apt upgrade -y


# Instalar pacotes a seguir
Instalando cURL
Certifique-se que você tenha o cURL instalado executando o seguinte comando no terminal:

# Executar comandos a seguir
sudo apt-get install curl
Instalando Node.js 14 (LTS)
Nesse tutorial, iremos ensinar como instalar o Node.js 14 (LTS) diretamente utilizando o cURL. Caso queira usar um package manager, você poder utilizar o nvm.

Agora com o cURL instalado, vamos instalar o Node.js 14 (LTS) utilizando os seguintes comandos:

Se você já tiver o Node.js instalado em sua máquina, certifique-se que sua versão é a 12 ou mais recente.

# Executar comandos a seguir

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs
Após a instalação, verifique se ela foi realizada com sucesso com os comandos (execute um de cada vez):

# Executar comandos a seguir
node -v
npm -v

# Executar comandos a seguir
sudo npm install --global yarn
Após a instalação, verifique se ela foi realizada com sucesso com o comando:

# Executar comandos a seguir
yarn -v

# Executar comandos a seguir
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-11-jdk

# Executar comandos a seguir
java -version

### Instale o Android Studio

Crie uma pasta em um local desejado para instalação da SDK. Ex: ~/Android/Sdk

Anote esse caminho para ser utilizado posteriormente 

Anote também o endereço de instalação do JDK 11. Exemplo:

# Executar comandos a seguir
/usr/lib/jvm/java-11-openjdk-amd64


Caso não tenha certeza do caminho, busque na pasta /usr/lib/jvm/ pela pasta referente ao JDK 11, que provavelmente iniciará com java-11.

Com esses caminhos, precisamos configurar algumas variáveis ambiente em nosso sistema. Procure pelo primeiro dos seguintes arquivos existentes no seu sistema: ~/.zshrc ou ~/.bashrc, e adicione essas seis linhas no arquivo (de preferência no início):

Se nenhum desses arquivos existir, crie o ~/.bashrc caso utilize o Shell padrão ou ~/.zshrc caso utilize o ZSH.


export JAVA_HOME=CAMINHO_ANOTADO_COM_SUA_VERSÃO    (---- /usr/lib/jvm/java-11-openjdk-amd64 ----)
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


Instalando Android Studio
Acesse a página do Android Studio e clique no botão Download Android Studio.

Vá até a pasta de download e abra o arquivo tar.gz.

Esse arquivo deve possuir uma pasta android-studio dentro. Extraia essa pasta em um local de preferência (Ex.: ~/).

Após a extração, adicione a seguinte variável ambiente no seu sistema:

# Executar comandos a seguir
export PATH=$PATH:~/android-studio/bin
A adição desse caminho possibilita a execução do Android Studio diretamente pelo terminal com o comando studio.sh. Caso tenha extraído em uma pasta diferente ou alterado o nome da pasta, ajuste o path acima para o que você utilizou.

Agora, abra o terminal (reinicie se já estiver aberto) e execute o seguinte comando:

# Executar comandos a seguir
studio.sh
