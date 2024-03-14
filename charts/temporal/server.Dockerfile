FROM temporalio/server:1.22.4

USER root
RUN apk --no-cache add shadow

RUN groupmod -g 1001380000 temporal && \
    usermod -u 1001380000 -g 1001380000 temporal

USER temporal