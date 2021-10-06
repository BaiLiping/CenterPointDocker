FROM scrin/dev-spconv:latest

RUN git clone https://github.com/BaiLiping/CenterPointDocker.git --recursive
RUN sudo echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse" > /etc/apt/sources.list
RUN sudo apt update
RUN apt upgrade -y
RUN apt install -y python3-pip
RUN python3 -m pip install --upgrade pip
RUN apt install -y libgl1-mesa-dev
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install opencv-python
RUN pip install opencv-contrib-python
RUN pip install nuscenes-devkit
RUN pip install -r /root/CenterPointDocker/NuScenes_Project/dependencies/Det3Drequirements.txt
RUN python3 /root/CenterPointDocker/NuScenes_Project/Det3D/setup.py build develop
RUN cd ../apex
RUN pip install -v --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" /root/CenterPointDocker/NuScenes_Project/apex

