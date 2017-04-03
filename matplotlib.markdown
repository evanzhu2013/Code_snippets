
### 设置支持Retina

```
import matplotlib.pyplot as plt
%matplotlib inline
%config InlineBackend.figure_format = 'retina'
```

### 设置matplotlib主题

```
import matplotlib as mpl
mpl.style.use('ggplot')
```

### 设置支持中文

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
### Pandas显示设置

```
pd.options.display.max_rows = 100
pd.options.display.max_columns = 100
```
