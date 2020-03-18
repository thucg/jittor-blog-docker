FROM debian:buster

RUN sed -i s/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list && \
        sed -i s/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list

RUN apt-get update && \
        apt-get install --no-install-recommends -y build-essential git ruby-bundler ruby-dev zlib1g-dev && \
        rm -rf /var/lib/apt/lists/*

COPY Gemfile /srv/jittor-blog/Gemfile

WORKDIR /srv/jittor-blog

RUN bundle install

COPY run.sh /root/run.sh

CMD ["/root/run.sh"]
