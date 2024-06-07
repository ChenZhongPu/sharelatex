#!/bin/bash
version=$(latex --version | head -n 1 | awk '{gsub(/\)/, "", $NF); print $NF}')
if [ "$version" == "2023" ]; then
    tlmgr option repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final/
fi