FROM svlentink/texlive-with-libraries
LABEL maintainer "Louis Paternault <spalax@gresille.org>"

# Install softwares
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get -y update \
  && apt-get install --yes \
    # Misc tools
    git \
    unzip \
    wget \
    strace \
    locales \
    # Python
    python3 \
    python3-pip \
    # Other tools
    graphviz \
  && apt-get clean

# Install my custom LaTeX classes
RUN git config --global http.sslverify false # Can be removed when bumping to the next Debian version
RUN git clone https://framagit.org/lpaternault/pablo.git /usr/share/pablo/texmf-dist/tex/latex/pablo
RUN tlmgr conf auxtrees add /usr/share/pablo/texmf-dist

# Programmes python
RUN python3 -m pip install \
  evariste \
  spix

# Set locale
RUN echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8
ENV LC_ALL fr_FR.UTF-8
RUN dpkg-reconfigure locales
