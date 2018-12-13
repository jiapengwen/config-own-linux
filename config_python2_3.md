# config python

## python2 

> __Note__
>> pip is already installed if you are using  python2 >= 2.7.9 or python3 >= 3.4;

### installing pip with get-pip.py

```
 curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
 python get-pip.py

```
 //for more information 
 [python2 install pip](https://pip.pypa.io/en/stable/installing/)


## python3 install 

```
//precondition
sudo yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel
tk-devel gcc make libffi-devel

wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tar.xz
xz -d Python-3.7.1.tar.xz 
cd Python-3.7.1
./configure prefix=/usr/local/python3
sudo make -j24 && make install 
```

--------------------
## questions

[CentOS 7 解决编译安装 Python 3.7 时 ModuleNotFoundError: No module named '_ctypes'](https://www.yuzhi100.com/article/centos-7-python37-no-module-named-ctypes)


 

