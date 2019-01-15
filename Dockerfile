FROM docker.io/loongnix/loongnix-base:latest

#添加初始化脚本到镜像的根目录下
ADD init.sh  /

#安装所需软件
RUN     yum install -y mongodb-server  \
   &&   yum install -y mongodb \ 
   &&   mkdir -p /data/db \
   &&   chmod a+x /init.sh \
   &&   yum clean all && yum makecache
                    
#设置容器对外端口
EXPOSE 27017

# overwrite this with 'CMD []' in a dependent Dockerfile
#默认不启动mongodb-server（二选一）
CMD ["/bin/bash"]
#默认启动mongobd-server （二选一）
#CMD ["/init.sh"]
