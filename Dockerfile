FROM fluent/fluentd:edge-debian 
USER 0
# apt로 패키지 설치 시 사용자에게 어떠한 입력 요구를 요청하지 않게 설정

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

RUN apt update && apt-get install -y sudo && apt-get -y install vim && apt-get -y install logrotate
RUN gem install fluentd --no-doc && fluent-gem install fluent-plugin-kafka && gem install fluent-plugin-webhdfs
