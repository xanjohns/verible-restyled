FROM ubuntu:20.04
LABEL maintainer="Xan Johnson <xanjohns@gmail.com>"
ENV LANG en_US.UTF-8
ENV PATH=/verible*/bin:$ 
#Check^
RUN \
  curl -s https://api.github.com/repos/google/verible/releases/latest |\
  grep "Ubuntu-20.04" |\
  grep "browser_download_url" |\
  cut -d : -f 2,3 |\
  xargs wget -q

RUN mkdir -p /code
WORKDIR /code
CMD ["verible-verilog-format", "--helpfull"]