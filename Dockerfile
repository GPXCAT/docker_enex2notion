FROM ubuntu:jammy-20230308

ENV PATH=$PATH:/root/.local/bin
RUN apt update \
    && apt install -y python3 pip python3.10-venv \
    && rm -rf /var/lib/apt/list/*

# https://github.com/pypa/pipx
RUN python3 -m pip install --user pipx
RUN python3 -m pipx ensurepath
# export PATH=$PATH:/root/.local/bin

# https://github.com/vzhd1701/enex2notion
RUN pipx install enex2notion

ENTRYPOINT ["/root/.local/bin/enex2notion"]
