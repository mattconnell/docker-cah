# docker-cah
A dockerization of the Cards Against Humanity web app.  Dockerized because Node is AIDS.

# Setup

1. Clone repo
1. Configure your server name in `config.yml`
1. Configure a repository with the actual CAH code/config in `Dockerfile`
    - I use QuillOmega's version since its least broken: https://github.com/QuillOmega0/cah
    - Any similarly-packaged CAH app should work though.

# Build/deploy

### Build

`docker build docker build -t cah:latest .`

### Run

`docker run -p 8765:8765 cah:latest`

Note that the port number will vary depending on your config and also your server.
