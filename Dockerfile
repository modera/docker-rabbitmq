FROM rabbitmq:3.6-management
MAINTAINER Sergei Vizel <sergei.vizel@modera.org>

ADD \
    https://bintray.com/rabbitmq/community-plugins/download_file?file_path=rabbitmq_delayed_message_exchange-0.0.1.ez \
    /plugins/rabbitmq_delayed_message_exchange-0.0.1.ez

RUN \
    chmod 0644 /plugins/rabbitmq_delayed_message_exchange-0.0.1.ez && \
    rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
