conda install scikit-learn pandas matplotlib HDF5 h5py seaborn jupyter notebook xlrd openpyxl
pip install imblearn graphviz arrow neupy minepy Pillow statsmodels==0.8.0rc1 pystan ipyparallel
pip install fbprophet

git clone --recursive https://github.com/dmlc/xgboost
cd xgboost; cp make/config.mk ./config.mk; make -j4
cd python-package; sudo python setup.py install

conda create --name snake python=2
source activate snake
conda install scikit-learn matplotlib pandas seaborn jupyter notebook
source deactivate snake
