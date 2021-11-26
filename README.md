# Service

## 介绍
LinkPi云服务相关免费软件的快速部署

包含集成通信系统、frp、nginx-rtmp、sls，未来还会扩展更多常用流媒体服务软件。

## 运行环境
ubuntu server 18.04

## 安装教程

以root用户登陆你的服务器

```
apt update
apt install git
git clone https://gitee.com/LinkPi/Service.git
cd Service
./install.sh
reboot
```


## 服务说明

#### Intercom
集成通信服务端程序，默认占用UDP 7000端口

#### frp
内网穿透程序，默认占用TCP 7000端口

#### nginx-rtmp
rtmp服务端，默认占用TCP 1935端口

推/拉流地址 rtmp://ServerIP/live/XXXX

#### sls
SRT Liver Server, 默认占用UDP 8080端口

推流地址 srt://ServerIP:8080?streamid=push/live/XXXX

拉流地址 srt://ServerIP:8080?streamid=pull/live/XXXX

## 服务配置
修改/link/config目录下的配置文件即可