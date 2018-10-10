
zsh，oh-my-zsh安装与使用

1) 先安装zsh，建议使用较新版本的zsh
    wget https://sourceforge.net/projects/zsh/files/zsh/5.6.2/zsh-5.6.2.tar.xz/download --no-check-certificate
    xz -d zsh-5.6.2.tar.xz
    tar xvf zsh-5.6.2.tar
    进入zsh目录
    ./configure 
    make -j4
    sudo make install

2) 验证一下zsh是否安装好了
    zsh --version
    cat /etc/shells
    看zsh是否在其中，如果没在，加入进去；

3）安装oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
4) 修改用户默认shell
    a) chsh -s /bin/zsh

    b) sudo vi /etc/passwd 
    找到需要修改的用户，在最后把shell替换为zsh；

5) 重启进入即可用


使用技巧：

1）选择自己喜欢的themes(推荐ys theme)
    a)在～/.zshrc中,修改ZSH_THEMES="ys"

    b) 或者多种themes自动切换
    ZSH_THEME="random"
    ZSH_THEME_RANDOM_CANDIDATES=("ys" "robbyrussell" "agnoster")



    

