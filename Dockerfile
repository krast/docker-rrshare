FROM centos:7

MAINTAINER krast <krast@live.cn>

LABEL MAINTAINER="krast"
LABEL EMAIL="krast@live.cn"
LABEL LABEL version="1.0"
LABEL description="人人影视WEB下载工具"

ADD rrshareweb_centos7.tar.gz /opt
COPY rrshare.json /opt/rrshareweb/conf
RUN  mkdir -p /opt/work/store && chmod 755 -R /opt

EXPOSE 3001/tcp
ENTRYPOINT ["/opt/rrshareweb/rrshareweb"]