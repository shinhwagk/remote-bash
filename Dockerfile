FROM alpine:latest

LABEL "com.github.actions.name"="git-bash"
LABEL "com.github.actions.description"="Run a command or script in a Git-ready environment"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="black"

RUN set -e -x; \
        apk add --no-cache \
            bash \
            curl \
            jq \
            git \
            openssh-client \
        ;
RUN curl -o /usr/bin/$COMMAND_NAME $REMOTE_BASH_URL;

COPY entrypoint /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
