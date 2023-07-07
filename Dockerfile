FROM texlive/texlive
LABEL maintainer "Louis Paternault <spalax@gresille.org>"

# Install Debian packages
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt --yes update \
  && apt install --yes --no-install-recommends \
    git \
    graphviz \
    imagemagick \
    libreoffice \
    locales \
    pandoc \
    pdftk \
    python3-pip \
    wget \
    ghostscript \
    xz-utils \
  && apt clean

# Allow Imagemagick to convert PDF to PNG
RUN sed -i \
    's/policy *domain="coder" *rights="none" *pattern="PDF"/policy domain="coder" rights="read|write" pattern="PDF"/' \
    /etc/ImageMagick-6/policy.xml

# Programmes python
RUN python3 -m pip install \
  evariste \
  spix

# Install my custom LaTeX classes
RUN git clone https://framagit.org/lpaternault/pablo.git /usr/share/pablo/texmf-dist/tex/latex/pablo
RUN tlmgr conf auxtrees add /usr/share/pablo/texmf-dist

# Add numworks fonts
RUN ( \
    cd /usr/local/share/fonts/ && \
    wget https://www.numworks.com/shared/pages/blog/numworks-keys-font/numworks-keys-font-351dbb06.zip && \
    unzip numworks-keys-font-351dbb06.zip && \
    rm numworks-keys-font-351dbb06.zip \
    )

# Set the locale
RUN echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8
ENV LC_ALL fr_FR.UTF-8
RUN dpkg-reconfigure locales
