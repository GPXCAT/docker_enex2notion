FROM python:3.10.11-slim-bullseye

ENV PATH=$PATH:/root/.local/bin

# https://github.com/pypa/pipx
RUN python3 -m pip install --user pipx
RUN python3 -m pipx ensurepath

# https://github.com/vzhd1701/enex2notion
RUN pipx install enex2notion

ENTRYPOINT ["/root/.local/bin/enex2notion"]
