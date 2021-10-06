FROM scrin/dev-spconv:latest

RUN git clone https://github.com/BaiLiping/CenterPointDocker.git --recursive
RUN cd CenterPointDocker
RUN cp sources.list /etc/apt/sources.list
RUN apt update
RUN apt upgrade -y
RUN apt install -y python3-pip
RUN python3 -m pip install --upgrade pip
RUN apt install -y libgl1-mesa-dev
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install opencv-python
RUN pip install opencv-contrib-python
RUN pip install nuscenes-devkit
RUN cd NuScenes_Project/dependencies/Det3D
RUN pip install -r requirements.txt
RUN python3 setup.py build develop
RUN cd ../apex
RUN pip install -v --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./

