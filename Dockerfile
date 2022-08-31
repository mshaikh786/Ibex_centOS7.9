FROM centos:7.9.2009
RUN yum update -y && \
    yum install -y which make wget gcc && \
    tcl-devel.x86_64 less

## Module install from source code 
## https://thelinuxcluster.com/2012/11/05/installing-and-configuting-environment-modules/ 

WORKDIR /software
RUN curl -LJO https://github.com/cea-hpc/modules/releases/download/v5.1.1/modules-5.1.1.tar.gz && \
    tar xfz modules-5.1.1.tar.gz 
WORKDIR /software/modules-5.1.1
RUN ./configure --prefix=/software --modulefilesdir=/sw/csi --enable-avail-indepth --enable-color --enable-ml && \
make && make install 
ENV PATH /software/bin:$PATH
ENV MODULESHOME /software/Modules
ENV MODULES_CMD=/software/libexec/modulecmd.tcl
ENTRYPOINT ["sh","/software/init/profile.sh"]
#RUN echo -e "alias module='/usr/bin/tclsh /software/libexec/modulecmd.tcl bash'" >> /etc/profile.d/module.sh


