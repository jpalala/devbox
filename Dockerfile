# syntax=docker/dockerfile:1
FROM alpine:latest

# Install packages bat, fd, ag, openssh-client, vim, git, curl, zsh etc
RUN apk update && apk add --no-cache \
    bat \
    fd \
    the_silver_searcher \
    openssh-client \
    bash \
	nano \
	vim \
    git \
    zsh \
    curl \
    ca-certificates && \
    update-ca-certificates


# Install Oh My Zsh (unattended)
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Set zsh as default shell
SHELL ["/bin/zsh", "-c"]
CMD ["zsh"]
