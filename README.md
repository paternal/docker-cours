paternal/cours
==============

![Docker Stars](https://img.shields.io/docker/stars/paternal/cours.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/paternal/cours.svg)

A docker image with the necessary tools to build my [course material](https://ababsurdo.fr/pedago/cours/). I would be surprised if this image was useful to anyone but me, but who knows?

## Available tools

- It is based on a [debian stretch](https://www.debian.org/releases/stretch/).
- The following tools are available:
  - [LaTeX](https://www.tug.org/texlive/) (and a lot of LaTeX packages and fonts);
  - [pablo](https://framagit.org/lpaternault/pablo) (my custom LaTeX classes used in my course material);
  - [python3](https://packages.debian.org/stretch/python3);
  - [evariste](https://git.framasoft.org/spalax/evariste/);
  - [graphviz](https://packages.debian.org/stretch/graphviz), [ghostscript](https://packages.debian.org/stretch/ghostscript).

## Usage

    sudo docker pull paternal/cours
    sudo docker run -i -t paternal/cours /bin/bash

