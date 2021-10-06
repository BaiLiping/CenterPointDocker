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
RUN pip install cxxfilt>=0.2.0
RUN pip install tqdm>=4.28.1
RUN pip install numpy>=1.15.3
RUN pip install PyYAML>=5.1
RUN pip install scikit-image                                                                                              
RUN pip install scipy                                                                                                     
RUN pip install numba                                                                                                     
RUN pip install pillow                                                                                                    
RUN pip install matplotlib                                                                                                
RUN pip install fire                                                                                                      
RUN pip install tensorboardX                                                                                              
RUN pip install protobuf                                                                                                  
RUN pip install opencv-python                                                                                             
RUN pip install opencv-contrib-python                                                                                     
RUN pip install pybind11                                                                                                  
RUN pip install vtk                                                                                                       
RUN pip install joblib                                                                                                    
RUN pip install easydict                                                                                                  
RUN pip install open3d-python                                                                                             
RUN pip install terminaltables                                                                                            
RUN pip install pytest-runner                                                                                             
RUN pip install addict                                                                                                    
RUN pip install pycocotools                                                                                               
RUN pip install imagecorruptions                                                                                          
RUN pip install objgraph                                                                                                  
RUN pip install lyft_dataset_sdk
