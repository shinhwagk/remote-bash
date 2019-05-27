FROM debian:stable-slim

LABEL "com.github.actions.name"="git-bash"
LABEL "com.github.actions.description"="Run a command or script in a Git-ready environment"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="black"

RUN apt-get update && \
	apt-get install curl -y && \
	apt-get clean -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
