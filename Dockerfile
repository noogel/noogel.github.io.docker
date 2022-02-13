# Python3.7官网镜像
FROM python:3.7.3

# 设置工作目录
WORKDIR /hexo

# 复制当前目录下的文件到工作目录
COPY . /var

# 安装pip库
RUN pip install -r /var/requirements.txt -i https://pypi.douban.com/simple/ &&\
    wget https://nodejs.org/dist/v16.13.1/node-v16.13.1-linux-x64.tar.xz &&\
    tar xf node-v16.13.1-linux-x64.tar.xz -C /opt/
ENV PATH=$PATH:/opt/node-v16.13.1-linux-x64/bin

RUN chmod u+x /var/init.sh

RUN git config --global user.email "noogel@163.com"
RUN git config --global user.name "noogel"
EXPOSE 1236
EXPOSE 80

# 容器启动后执行命令, 运行pufei
CMD ["python", "/var/app.py"]
