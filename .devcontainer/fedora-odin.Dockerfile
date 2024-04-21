FROM fedora:latest

WORKDIR /

RUN dnf update -y && dnf upgrade -y && dnf install bash which git gh -y

RUN dnf install make clang llvm llvm-devel -y

ENV LLVM_CONFIG="/usr/bin/llvm-config"

RUN llvm-config --version

RUN git clone https://github.com/odin-lang/Odin

RUN cd Odin; make

ENV PATH="/Odin:$PATH"

RUN echo $PATH

RUN odin version

RUN git clone --depth 1 --branch nightly https://github.com/DanielGavin/ols.git

RUN cd ols; ./build.sh

