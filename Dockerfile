FROM debian:stretch

# Install softwares
RUN \
  apt-get -y update \
  && DEBIAN_FRONTEND=noninteractive apt-get install --yes \
    # Misc tools
    git unzip wget strace locales \
    # Python
    python3 libgit2-dev libffi-dev python3-pip \
    # Other tools
    graphviz \
  && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --yes \
    # LaTeX
    # Should I install texlive-full instead?
    # If you need more LaTeX packages, submit a pull request. It should be accepted
    texlive-fonts-extra texlive-fonts-recommended texlive-generic-extra texlive-generic-recommended texlive-lang-french texlive-latex-base texlive-latex-extra texlive-latex-recommended texlive-luatex texlive-pstricks texlive-science \
    ghostscript tipa lmodern \
  && apt-get clean

# Pablo
RUN git clone https://framagit.org/lpaternault/pablo.git /usr/share/pablo
ENV TEXINPUTS :/usr/share/pablo

# TODO Install with `pip3 install evariste`
RUN \
  git clone https://framagit.org/spalax/evariste.git /usr/evariste \
  && cd /usr/evariste \
  && python3 setup.py install

# Set locale
RUN locale-gen fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8
ENV LC_ALL fr_FR.UTF-8
