# noogel.github.io.docker

1. 构建镜像 `docker build -t 'xyz-hexo:0.1.7' .`
2. 拉取项目 `git clone git@github.com:xxx/xxx.github.io.git`
3. 容器启动 `docker run -it -d --name=blog -p 1236:1236 -p 1237:80 -v 本地博客目录:/hexo -v 本地SSH目录:/root/.ssh --restart=always xyz-hexo:0.1.7`
4. 博客环境初始化 `docker exec -it container_id /bin/bash /var/init.sh`
5. 预览本地博客 `docker exec -it container_id python utils/goto.py blog`
6. 发布博客文章 `docker exec -it container_id python utils/goto.py push`
