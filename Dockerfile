# 通过什么镜像构建新的镜像
FROM tomcat:latest
# 版本号
LABEL version='1.1'
# 作者
LABEL  author=joke<123@qq.com>
# 切换工作目录
WORKDIR  /usr/local/tomcat/webapps/
# 运行linux 命令
RUN  mkdir ROOT
WORKDIR /usr/local/tomcat/
#挂载数据卷
VOLUME ./target/spring-docker:/usr/local/tomcat/webapps/ROOT
# 复制当前上下文中的 文件数据到容器中指定的文件中
COPY  ./target/spring-docker/  /usr/local/tomcat/webapps/ROOT/
#端口
EXPOSE 8080
# 运行命令
# ENTRYPOINT["catalina.sh", "run"]