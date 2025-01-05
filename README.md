> ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
>
> This repository has moved to:
>
> https://forge.apps.education.fr/paternaultlouis/docker
>
> See you there!
>
> ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️

paternal/cours
==============

![Docker Stars](https://img.shields.io/docker/stars/paternal/cours.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/paternal/cours.svg)

A docker image with the necessary tools to build my [course material](https://ababsurdo.fr/pedago/cours/). I would be surprised if this image was useful to anyone but me, but who knows?

## Available tools

- It is based on a [debian testing](https://www.debian.org/releases/testing/).
- The following tools are available:
  - [LaTeX](https://www.tug.org/texlive/) (and a lot of LaTeX packages and fonts);
  - [evariste](https://framagit.org/spalax/evariste/);
  - [spix](https://framagit.org/spalax/spix/);
  - [ghostscript](https://packages.debian.org/testing/ghostscript).
  - [graphviz](https://packages.debian.org/testing/graphviz),
  - [libreoffice](https://packages.debian.org/testing/libreoffice);
  - [pablo](https://forge.apps.education.fr/paternaultlouis/pablo) (my custom LaTeX classes used in my course material);
  - [pandoc](https://packages.debian.org/testing/pandoc);
  - [pdfautonup](https://framagit.org/spalax/pdfautonup/);
  - [pdfimpose](https://framagit.org/spalax/pdfimpose/);
  - [pdftk](https://packages.debian.org/testing/pdftk);
  - [python3](https://packages.debian.org/testing/python3);
  - [wget](https://packages.debian.org/testing/wget);

## Usage

    sudo docker pull paternal/cours
    sudo docker run -i -t paternal/cours /bin/bash

