FROM       centos:7
RUN yum install -y curl \
    gcc \
    gmp-devel \
    pcre-devel \
    perl \
    tar \
    which \
    xz \
    zlib-devel \
    && yum clean all --releasever=6 \
    && ln -s /lib64/libtinfo.so.5 /lib64/libtinfo.so
ENV GHC_VERSION=7.10.3
RUN yum install -y make
RUN mkdir -p /opt/stack/bin
RUN curl -L https://www.stackage.org/stack/linux-x86_64 | \
    tar xz --wildcards --strip-components=1 -C /opt/stack/bin '*/stack'
ENV PATH /opt/stack/bin/:$PATH
RUN stack setup $GHC_VERSION
RUN yum install -y lapack-devel blas-devel
