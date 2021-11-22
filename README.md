# 個人用メモ

## nvim0.5インストールとその他

```bash
# リポジトリの追加
sudo apt -y install software-properties-common

sudo apt update
sudo apt upgrade
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt -y install neovim
sudo apt -y install python3-pip
pip3 install neovim
pip3 install pynvim
```

## vim-plug インストール
````
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
````

## zpreztoインストール
```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```
