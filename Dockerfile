FROM #check
LABEL maintainer="Xan Johnson <xanjohns@gmail.com>"
ENV LANG en_US.UTF-8 
#Check^

RUN mkdir -p /code
WORKDIR /code
CMD ["verible-verilog-format", "--help"]