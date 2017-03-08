###Conda Envs

```
# 环境激活
conda create -n Xeon python=3.5 # 创建新的环境
source activate Xeon # 激活环境
source deactivate # 激活主环境
```

```
# 更新软件模块
conda update # 更新软件模块
conda update --all # 更新软件模块
conda update conda # 更新conda
```

### 特殊软件包的安装

```
conda install scikit-learn pandas jupyter notebook ipyparallel openpyxl  matplotlib seaborn basemap sympy
pip install statsmodels==0.8.0rc1 # 安装 statsmodels
```
### 不显示Python中的warnings

```
# remove warnings
import warnings
warnings.filterwarnings('ignore')
```
