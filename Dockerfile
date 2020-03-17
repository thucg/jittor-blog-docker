FROM debian:buster

RUN sed -i s/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list && \
        sed -i s/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list

RUN apt-get update && \
        apt-get install --no-install-recommends -y build-essential git ruby-bundler ruby-dev zlib1g-dev && \
        rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/zhouwy19/jittor-blog.git /srv/jittor-blog --single-branch && \
        cd /srv/jittor-blog && \
        git reset --hard d3fed1800d271bf4a406cd5f1cacf52b9bfccd32

WORKDIR /srv/jittor-blog

RUN bundle install

COPY run.sh /root/run.sh

CMD ["/root/run.sh"]
