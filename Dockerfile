FROM alpine:latest
RUN apk add --no-cache curl libc6-compat libstdc++ gcompat bash
WORKDIR /root
RUN curl -Lk "https://aka.ms" --output vscode_cli.tar.gz && tar -xf vscode_cli.tar.gz && rm vscode_cli.tar.gz
EXPOSE 10000
CMD ["./code", "tunnel", "--accept-server-license-terms", "--no-sleep"]
