## XGBoost安装


### Homebrew安装

安装
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
卸载
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```

### OpenMP安装

```
brew install gcc --without-multilib
```

### ~/.bash_profile文件修改

```
export PATH=/usr/local/bin:$PATH

# export CC = /usr/local/Cellar/gcc/6.3.0_1/bin/gcc-6
# export CXX = /usr/local/Cellar/gcc/6.3.0_1/bin/g++-6
# export MPICXX= /usr/local/Cellar/gcc/6.3.0_1/bin/mpicxx

cd /usr/local/bin
ln -s  gcc-7 gcc
```

### XGBoost包安装

```
git clone --recursive https://github.com/dmlc/xgboost
```

### config文件修改

```
atom ./xgboost/make/config.mk
export CC = gcc-6
export CXX = g++-6
export MPICXX= mpicxx
```

### Python包安装

```
cd xgboost; cp make/config.mk ./config.mk; make clean_all && make -j4
cd python-package; sudo python setup.py install
```

### 参考资料

1.  http://xgboost.readthedocs.io/en/latest/build.html#python-package-installation
2.  https://www.ibm.com/developerworks/community/blogs/jfp/entry/Installing_XGBoost_on_Mac_OSX?lang=en
3.
http://stackoverflow.com/questions/28970935/osx-replace-gcc-version-4-2-1-with-4-9-installed-via-homebrew/28982564#28982564
4.
