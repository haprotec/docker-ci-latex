FROM camilstaps/texlive:latest

RUN apt-get update -q && apt-get install -yq --no-install-recommends \
    git \
    mono-complete \
    && rm -rf /var/lib/apt/lists/*

# Install gitsemver
ADD http://downloads.haprotec.de/gitsemver/gitsemver.deb /
RUN dpkg -i /gitsemver.deb && rm /gitsemver.deb

