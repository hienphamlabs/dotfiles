FROM ghcr.io/hienduyph/devbox:f44-1.0.0

ENV VERSION=4.123.0
RUN dnf install python3.13 python3.13-devel nodejs-npm clang-tools-extra -y \
  && dnf --setopt=install_weak_deps=False install -y https://github.com/coder/code-server/releases/download/v${VERSION}/code-server-${VERSION}-amd64.rpm hostname localectl
