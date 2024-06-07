FROM sharelatex/sharelatex:5
# 目前sharelatex使用的是2023版本，而texlive默认是2024
# 因此，需要手动设置2023版本的texlive
RUN tlmgr option repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final/
RUN tlmgr update --self
RUN tlmgr install scheme-full

# 使用minted包
RUN apt update && apt install -y \
    python3 \
    python3-pip
RUN pip install pygments
RUN echo 'shell_escape = t' | tee -a /usr/local/texlive/2023/texmf.cnf