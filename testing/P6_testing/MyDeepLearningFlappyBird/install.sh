conda create --name=flappybird python=2.7
source activate flappybird
conda install -c menpo opencv3
pip install pygame
pip install tensorflow
git clone https://github.com/yenchenlin/DeepLearningFlappyBird.git
cd DeepLearningFlappyBird
python deep_q_network.py

