FROM debian:stretch

# Install softwares
RUN \
  apt-get -y update \
  && apt-get install --yes \
    # Misc tools
    git unzip wget strace locales \
    # Python
    python3 libgit2-dev libffi-dev python3-pip \
    # LaTeX
    texlive-fonts-recommended texlive-lang-french texlive-latex-base texlive-latex-extra texlive-latex-recommended texlive-luatex texlive-science tipa \
    # Other tools
    graphviz

# Pablo
RUN git clone https://framagit.org/lpaternault/pablo.git /usr/share/pablo
ENV TEXINPUTS :/usr/share/pablo

# TODO Install with `pip install evariste`
RUN git clone https://framagit.org/spalax/evariste.git
RUN cd evariste && python3 setup.py install

# Set locale
RUN locale-gen fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LC_ALL fr_FR.UTF-8
