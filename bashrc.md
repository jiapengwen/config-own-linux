
##  bashrc 配置

```bash
//Linux 终端显示 Git 当前所在分支
function git_branch {  
   branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"  
   if [ "${branch}" != "" ];then  
       if [ "${branch}" = "(no branch)" ];then  
           branch="(`git rev-parse --short HEAD`...)"  
       fi  
       echo " ($branch)"  
   fi  
}  

export PS1='\u@\h \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\[\033[00m\] \$ '  

//alias ctags 
alias ctagsr='ctags -R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px --fields=+aiKSz --extra=+q --exclude=lex.yy.cc --exclude=copy_lex.yy.cc'
```

