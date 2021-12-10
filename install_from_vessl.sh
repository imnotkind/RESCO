#from Python3.6, cuda 10.2, jupyterlab in vessl

pip install gym pfrl
pip install tensorflow-gpu==1.15.5
pip install torch==1.8.1+cu102 -f  https://download.pytorch.org/whl/torch_stable.html
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.8.1+cu102.html
sudo add-apt-repository --yes ppa:sumo/stable
sudo apt-get update
sudo apt-get --assume-yes install sumo sumo-tools sumo-doc
export SUMO_HOME=/usr/share/sumo
cd ~/RESCO/environments/grid4x4/ && unzip grid4x4.zip