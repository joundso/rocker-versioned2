FROM ubuntu:focal

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
      org.opencontainers.image.source="https://github.com/rocker-org/rocker-versioned2" \
      org.opencontainers.image.vendor="Rocker Project" \
      org.opencontainers.image.authors="Carl Boettiger <cboettig@ropensci.org>"

ENV R_VERSION=4.0.2
ENV TERM=xterm
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV R_HOME=/usr/local/lib/R
ENV CRAN=https://packagemanager.rstudio.com/cran/__linux__/focal/2020-10-07
ENV TZ=Etc/UTC

COPY scripts/install_R.sh /rocker_scripts/install_R.sh

RUN /rocker_scripts/install_R.sh

COPY scripts /rocker_scripts

CMD ["R"]
