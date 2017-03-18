## Python 环境安装

### miniconda安装

下载 [miniconda](https://conda.io/miniconda.html)

### Package模块安装

```
conda install scikit-learn, pandas,matplotlib, HDF5, h5py, seaborn
pip install imblearn graphviz arrow neupy fbprophet minepy minepy Pillow statsmodels==0.8.0rc1
```

### XGBoost安装

[编译XGBoost](https://github.com/dmlc/xgboost/blob/master/doc/build.md#building-on-osx)

安装XGBoost
```
cd python-package; sudo python setup.py install
```

### Python 2.7 环境安装

```
conda create --name snake python=2
source activate snake
conda install scikit-learn matplotlib pandas seaborn
source deactivate snake
```

### matplotlib中文字体问题

Step1 : 查找matplotlib字体存放目录

```
import matplotlib as mpl
mpl.matplotlib_fname() # 查找路径
```
Step 2 : 将中文字体(SimHei,SimSun)复制入matplotlib字体文件夹下

Step 3: 进入～／.matplotlib 文件夹中删除fontList.py3k.cache文件
Step 4: 重启 Python

测试：
```
# 每次编写代码时进行参数设置
import matplotlib as mpl
import matplotlib.pyplot as plt
%matplotlib inline
%config InlineBackend.figure_format = 'retina'
import numpy as np
mpl.rcParams['font.sans-serif'] = ['SimHei'] #指定默认字体
mpl.rcParams['axes.unicode_minus'] = False #解决保存图像是负号'-'显示为方块的问题
x = np.linspace(0,10,100)
fig = plt.figure()
plt.plot(x,np.sin(x))
plt.plot(x,np.cos(x))
plt.xlabel('X坐标')
plt.ylabel('y坐标')
```

[参考链接](https://www.zhihu.com/question/25404709)

### 深度学习包安装

pip install Theano keras tensorflow
