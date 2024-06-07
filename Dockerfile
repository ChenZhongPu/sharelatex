FROM sharelatex/sharelatex:5.0.4

COPY check_tex.sh check_tex.sh
RUN chmod +x check_tex.sh
RUN ./check_tex.sh
RUN tlmgr update --self
RUN tlmgr install scheme-full

# 使用minted包
RUN apt update && apt install -y \
    python3 \
    python3-pip
RUN pip install pygments
RUN echo 'shell_escape = t' | tee -a /usr/local/texlive/2023/texmf.cnf