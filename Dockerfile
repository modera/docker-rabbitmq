FROM rabbitmq:3.9.12-management

LABEL maintainer "Sergei Vizel <http://github.com/cravler>"

ADD \
    https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.9.0/rabbitmq_delayed_message_exchange-3.9.0.ez \
    /plugins/rabbitmq_delayed_message_exchange-3.9.0.ez

RUN \
    chmod 0644 /plugins/rabbitmq_delayed_message_exchange-3.9.0.ez && \
    rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
