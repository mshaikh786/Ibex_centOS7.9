FROM centos:7.9.2009
RUN yum update -y && \
    yum install -y which make wget gcc tcl tcl-devel 

## Module install from source code 
## https://thelinuxcluster.com/2012/11/05/installing-and-configuting-environment-modules/ 
wget https://sourceforge.net/projects/modules/files/Modules/modules-3.2.10/modules-3.2.10.tar.gz
tar -zxvf odules-3.2.10.tar.gz
cd modules-3.2.10
./configure --with-module-path=/usr/local/Modules/contents
make && make install 
