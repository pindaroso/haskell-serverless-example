FROM centos:7
RUN yum install -y curl gcc gmp-devel pcre-devel perl tar which xz zlib-devel \
    lapack-devel blas-devel make git && yum clean all --releasever=6 && \
    ln -s /lib64/libtinfo.so.5 /lib64/libtinfo.so
ENV GHC_VERSION=7.10.3
RUN mkdir -p /opt/stack/bin
RUN curl -L https://www.stackage.org/stack/linux-x86_64 | \
    tar xz --wildcards --strip-components=1 -C /opt/stack/bin '*/stack'
ENV PATH /opt/stack/bin/:$PATH
RUN stack setup $GHC_VERSION
WORKDIR /opt/infrastructure
CMD ["tail", "-f", "/dev/null"]
