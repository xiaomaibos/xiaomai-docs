## 小麦后端部署文档

说明：部署项目只需参考第二部分（部署war包）

###  一、运行环境

System: Ubuntu16.04

Java: openjdk version "1.8.0_252"

Mysql: Ver 14.14 Distrib 5.7.30

Redis server: v=3.0.6

nginx: version nginx/1.10.3 (Ubuntu)

Tomcat: apache tomcat 8.5.53

### 二、部署war包

Step1: 将项目打包并上传目录/root/damai.war

Step2: 执行./deploy_damai.sh自动部署，或执行shell命令手动部署：

```shell
#!/bin/bash

service tomcat stop
echo "waiting for service stop tomcat ... 6s count down"
sleep 6

cd /opt/tomcat/webapps
cp /root/damai.war /opt/tomcat/webapps/damai/
cd /opt/tomcat/webapps/damai/
jar -xvf damai.war
rm -r ./damai.war
chown -R tomcat:tomcat ../damai
# 缓存数据
DBUSER=`cat /etc/mysql/debian.cnf | grep user|awk '{print $3}'|head -1`
DBPASS=`cat /etc/mysql/debian.cnf | grep password|awk '{print $3}'|head -1`
cd /opt/tomcat/webapps/damai/WEB-INF/classes
# 将缓存的数据替换配置文件相应内容
sed -i "s/username: root/username: $DBUSER/g" application.yml
sed -i "s/password: 19980203/password: $DBPASS/g" application.yml

service tomcat restart
echo "waiting for service restart tomcat ... 6s count down"
sleep 6
echo "done!"
```



### 三、修改 tomcat 默认根目录

编辑Tomcat配置文件/opt/tomcat/conf/server.xml，在host标签之间加入如下标签：

```shell
<Host name="localhost"  appBase=""
            unpackWARs="true" autoDeploy="true">
 
	<Context path="" docBase="/opt/tomcat/webapps/damai" debug="0" reloadable="true" />
</Host>
```

