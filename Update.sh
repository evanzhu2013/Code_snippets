# Python 3
conda update conda
conda update --all
pip install -U arrow Theano setuptools imblearn graphviz minepy neupy xgboost
pip install -U wordcloud statsmodels pip scikit-plot altair PySAL tensorflow

# Python 2
source activate snake
conda update --all
pip install -U pip
source deactivate

# Brew update
brew update
brew upgrade
brew cleanup
