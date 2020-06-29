# existing problems:
# - chinese input method, this may be solved by pass -e parameters while running a container, refer to other wechat docker
#
FROM nvidia/cudagl:10.1-devel-ubuntu16.04
LABEL maintainer="oldwhale"

RUN apt-get update && \
    apt-get install git wget vim -y

RUN git clone https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git /tmp/deepin-wine-for-ubuntu && \
    cd /tmp/deepin-wine-for-ubuntu && \
    sed -i "s/sudo//g" install.sh && \
    apt install libjpeg62:i386 -y && \
    rm -r /tmp/deepin-wine-for-ubuntu

#RUN wget https://mirrors.aliyun.com/deepin/pool/nonfree/d/deepin.com.weixin.work/deepin.com.weixin.work_2.8.10.2010deepin0_i386.deb -O /tmp/wexin-work.deb && \
#    dpgk -i /tmp/wexin-work.deb

