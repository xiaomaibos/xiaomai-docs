## 小麦后端部署文档

### 一、部署war包

参考以下shell命令：

```shell
#!/bin/bash

service tomcat stop
echo "waiting for service stop tomcat ... 6s count down"
sleep 6

cd /opt/tomcat/webapps
rm -r ./xiaomai ./xiaomai.war
mkdir ./xiaomai
cp /root/xiaomai.war /opt/tomcat/webapps/xiaomai/
cd /opt/tomcat/webapps/xiaomai/
jar -xvf xiaomai.war
rm -r ./xiaomai.war
chown -R tomcat:tomcat ../xiaomai
# 缓存数据
DBUSER=`cat /etc/mysql/debian.cnf | grep user|awk '{print $3}'|head -1`
DBPASS=`cat /etc/mysql/debian.cnf | grep password|awk '{print $3}'|head -1`
cd /opt/tomcat/webapps/xiaomai/WEB-INF/classes
# 将缓存的数据替换配置文件相应内容
sed -i "s/jdbc.username=root/jdbc.username=$DBUSER/g" config.properties
sed -i "s/jdbc.password=root/jdbc.password=$DBPASS/g" config.properties

service tomcat restart
echo "waiting for service restart tomcat ... 6s count down"
sleep 6
echo "done!"
```



### 二、修改 tomcat 默认根目录

编辑Tomcat配置文件/opt/tomcat/conf/server.xml，在host标签之间加入如下标签：

```shell
<Host name="localhost"  appBase=""
            unpackWARs="true" autoDeploy="true">
 
	<Context path="" docBase="/opt/tomcat/webapps/xiaomai" debug="0" reloadable="true" />
</Host>
```

