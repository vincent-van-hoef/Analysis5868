FROM rocker/verse:4.0.4

## Install software dependencies
RUN apt-get update \
  && apt-get install -y \
    git \
    wget

RUN tlmgr update --self && tlmgr install amsmath

RUN install2.r BiocManager && /usr/local/lib/R/site-library/littler/examples/installBioc.r \
    DESeq2 \
    && rm -rf /tmp/downloaded_packages/