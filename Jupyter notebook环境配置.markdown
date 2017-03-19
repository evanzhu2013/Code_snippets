## Python 环境安装

### 卸载minconda

```
rm -rf miniconda3/ .conda/ .continuum/ .ipython/ .jupyter/
conda remove -n snake --all # 删除环境
```

### miniconda安装

下载 [miniconda](https://conda.io/miniconda.html)

### Package模块安装

```
conda install scikit-learn pandas matplotlib HDF5 h5py seaborn jupyter notebook xlrd openpyxl
pip install imblearn graphviz arrow neupy minepy Pillow statsmodels==0.8.0rc1 pystan ipyparallel
pip install fbprophet
```

### ipyparallel

```
pip install ipyparallel
ipcluster nbextension enable # Restart
ipcluster nbextension disable
```

### XGBoost安装

[编译XGBoost](https://github.com/dmlc/xgboost/blob/master/doc/build.md#building-on-osx)

安装XGBoost

```
git clone --recursive https://github.com/dmlc/xgboost
cd xgboost; cp make/config.mk ./config.mk; make -j4
cd python-package; sudo python setup.py install
```

### Python 2.7 环境安装

```
conda create --name snake python=2
source activate snake
conda install scikit-learn matplotlib pandas seaborn jupyter notebook
pip install ipyparallel
ipcluster nbextension enable # Restart
source deactivate snake
```

### matplotlib中文字体问题

Step1 : 查找matplotlib字体存放目录

```
import matplotlib as mpl
mpl.matplotlib_fname() # 查找路径
```
font.family和font.sans-serif两行前的#，并在font.sans-serif后添加中文字体SimHei, SimSun

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
```
conda create --name DL python=3
conda install pandas scikit-learn matplotlib seaborn
pip install keras Theano tensorflow
```

### 测试

````
import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.tsa.seasonal import seasonal_decompose
import numpy as np
import seaborn as sns
from neupy.algorithms import GRNN as grnn
import xgboost
import statsmodels.api as sm
from statsmodels.tsa.stattools import acf, pacf
```
